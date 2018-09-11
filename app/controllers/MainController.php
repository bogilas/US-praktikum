<?php
    class MainController extends Controller {
        public function prijava() {
            if (!empty($_POST)) {
                $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
                $password = filter_input(INPUT_POST, 'pass', FILTER_SANITIZE_STRING);

                $user = UserModel::getByUsernameAndPasswordHash($email, $password);

                if ($user) {
                    Session::set('user_id', $user->user_id);
                    Misc::redirect('preduzeca');
                } else {
                    $this->set('message', 'Nisu dobri login parametri.');
                    sleep(1);
                }
            }
        }

        public function logout() {
            Session::end();
            Misc::redirect('login');
        }
        
        public function preduzeca() {
            $preduzeca = BaseModel::getAllMRPCompanies();
            $this->setData('preduzeca', $preduzeca);
        }
        
        public function preduzece($preduzece_id) {
            $preduzece = BaseModel::getCPCompany($preduzece_id);
            $this->setData('preduzece', $preduzece);
        }
        //$activity,$type_product,$region,$city,$city_part,$comp_name,$day,$hours)
        public function preduzecaFiltrirana(){
            $activity = filter_input(INPUT_POST, 'activity', FILTER_SANITIZE_STRING);
            $type_product = filter_input(INPUT_POST, 'type_product', FILTER_SANITIZE_STRING);
            $region= filter_input(INPUT_POST, 'region', FILTER_SANITIZE_STRING);
            $city = filter_input(INPUT_POST, 'city_part', FILTER_SANITIZE_STRING);
            $comp_name = filter_input(INPUT_POST, 'comp_name', FILTER_SANITIZE_STRING);
            $day = filter_input(INPUT_POST, 'day', FILTER_SANITIZE_STRING);
            $hours = filter_input(INPUT_POST, 'hours', FILTER_SANITIZE_STRING);
            $preduzeca = BaseModel::getMPCompaniesFiltered($activity,$type_product,$region,$city,$city_part,$comp_name,$day,$hours);
            $this->setData('preduzeca',$preduzeca);
            
        }
    }
