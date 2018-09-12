<?php
    class MainController extends Controller {
                
        public function prijava() {
            if (!empty($_POST)) {
                $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
                $password = filter_input(INPUT_POST, 'pass', FILTER_SANITIZE_STRING);

                $user = UserModel::getByUsernameAndPasswordHash($email, $password);

                if ($user) {
                    Session::set('user_id', $user->preduzetnik_sif);
                    Misc::redirect('');
                } else {
                    $user = UserModel::getByUsernameAndPasswordHashAdmin($email, $password);
                    if($user){
                        Session::set('admin_id',$user->admin_sif);
                        Misc::redirect('');
                    }else{
                        Session::set('error',"email i sifra ne pripadaju nijednom korisniku");
                        Misc::redirec('');
                    }
                }
            }
        }   
        
        public function index() {
            $data = BaseModel::getMRPCompaniesPerType();
            $this->setData('preduzeca', $data);
            parent::index();
        }
        
        public function logout() {
            Session::end();
            Misc::redirect('');
        }
        
        public function preduzeca() {
            $preduzeca;
            $delatnosti = BaseModel::getActivities();
            $proizvodi = BaseModel::getProductTypes();
            $regioni = BaseModel::getRegions();
            if(!empty($_POST)){
                $activity = filter_input(INPUT_POST, '_delatnost', FILTER_SANITIZE_STRING);
                $type_product = filter_input(INPUT_POST, '_proizvod', FILTER_SANITIZE_STRING);
                $region= filter_input(INPUT_POST, '_regija', FILTER_SANITIZE_STRING);
                $city = filter_input(INPUT_POST, '_grad', FILTER_SANITIZE_STRING);
                $city_part = filter_input(INPUT_POST, '_opstina', FILTER_SANITIZE_STRING);
                $comp_name = filter_input(INPUT_POST, '_komp_ime', FILTER_SANITIZE_STRING);
                $day = filter_input(INPUT_POST, '_dani', FILTER_SANITIZE_STRING);
                $hours = filter_input(INPUT_POST, '_sat', FILTER_SANITIZE_STRING);
                $preduzeca = BaseModel::getMPCompaniesFiltered($activity,$type_product,$region,$city,$city_part,$comp_name,$day,$hours);
            }else{
                $preduzeca = BaseModel::getAllMRPCompanies();
            }
            if(empty($preduzeca)){
                $this->setData("error", "Nema rezultata za odabranu pretragu.");
            }
            $this->setData('preduzeca', $preduzeca);
            $this->setData('delatnosti', $delatnosti);
            $this->setData('proizvodi', $proizvodi);
            $this->setData('regioni', $regioni);
            
        }
        
        public function preduzece($preduzece_id) {
            $preduzece = BaseModel::getCPCompany($preduzece_id);
            $this->setData('preduzece', $preduzece);
        }

        public function ajaxCityCallResponse($id){
            $this->setData('gradovi', BaseModel::getCitiesByRegion($id));
        }
     
        public function ajaxDistrictCallResponse($id){
            $this->setData('opstine', BaseModel::getCityPartsByCity($id));
        }
    }
