<?php

class UserController extends Controller {
    
    public function dodajKompaniju() {
        if(!Session::exists('user_id')){
            Misc::redirect('preduzeca');
        }else{
            $delatnosti = BaseModel::getActivities();
            $proizvodi = BaseModel::getProductTypes();
            $regioni = BaseModel::getRegions();
            $this->setData('delatnosti', $delatnosti);
            $this->setData('proizvodi', $proizvodi);
            $this->setData('regioni', $regioni);
        }
    } 
    
    public  function novoPreduzece(){
        if(!Session::exists('user_id')){
            Misc::redirect('preduzeca');
        }else if(!empty($_POST)){
                $data = [];
                $data['user'] = Session::get('user_id');
                $data['punNaziv'] = filter_input(INPUT_POST, '_punNaziv', FILTER_SANITIZE_STRING);
                $data['kratakNaziv'] = filter_input(INPUT_POST, '_kratakNaziv', FILTER_SANITIZE_STRING);
                $data['matBroj'] = filter_input(INPUT_POST, '_matBroj', FILTER_SANITIZE_STRING);
                $data['pib'] = filter_input(INPUT_POST, '_pib', FILTER_SANITIZE_STRING);
                $data['sajtLink'] = filter_input(INPUT_POST, '_sajtLink', FILTER_SANITIZE_STRING);
                $data['telefon'] = filter_input(INPUT_POST, '_telefon', FILTER_SANITIZE_STRING);
                $data['posebneNapomene'] = filter_input(INPUT_POST, '_posebneNapomene', FILTER_SANITIZE_STRING);
                $data['logotip'] = filter_input(INPUT_POST, '_logotip', FILTER_SANITIZE_STRING);
                $data['kratakOpis'] = filter_input(INPUT_POST, '_kratakOpis', FILTER_SANITIZE_STRING);
                $data['adresa'] = filter_input(INPUT_POST, '_adresa', FILTER_SANITIZE_STRING);
                $data['lokacija_sirina'] = filter_input(INPUT_POST, '_lokacija_sirina', FILTER_SANITIZE_STRING);
                $data['lokacija_duzina'] = filter_input(INPUT_POST, '_lokacija_duzina', FILTER_SANITIZE_STRING);
                $data['delatnost'] = filter_input(INPUT_POST, '_delatnost', FILTER_SANITIZE_STRING);
                $data['regija'] = filter_input(INPUT_POST, '_regija', FILTER_SANITIZE_STRING);
                $data['grad'] = filter_input(INPUT_POST, '_grad', FILTER_SANITIZE_STRING);
                $data['opstina'] = filter_input(INPUT_POST, '_opstina', FILTER_SANITIZE_STRING);
                $data['pOd'] = filter_input(INPUT_POST, '_pOd', FILTER_SANITIZE_STRING);
                $data['pDo'] = filter_input(INPUT_POST, '_pDo', FILTER_SANITIZE_STRING);
                $data['uOd'] = filter_input(INPUT_POST, '_uOd', FILTER_SANITIZE_STRING);
                $data['uDo'] = filter_input(INPUT_POST, '_uDo', FILTER_SANITIZE_STRING);
                $data['sOd'] = filter_input(INPUT_POST, '_sOd', FILTER_SANITIZE_STRING);
                $data['sDo'] = filter_input(INPUT_POST, '_sDo', FILTER_SANITIZE_STRING);
                $data['cOd'] = filter_input(INPUT_POST, '_cOd', FILTER_SANITIZE_STRING);
                $data['cDo'] = filter_input(INPUT_POST, '_cDo', FILTER_SANITIZE_STRING);
                $data['peOd'] = filter_input(INPUT_POST, '_peOd', FILTER_SANITIZE_STRING);
                $data['peDo'] = filter_input(INPUT_POST, '_peDo', FILTER_SANITIZE_STRING);
                $data['suOd'] = filter_input(INPUT_POST, '_suOd', FILTER_SANITIZE_STRING);
                $data['suDo'] = filter_input(INPUT_POST, '_suDo', FILTER_SANITIZE_STRING);
                $data['neOd'] = filter_input(INPUT_POST, '_neOd', FILTER_SANITIZE_STRING);
                $data['neDo'] = filter_input(INPUT_POST, '_neDo', FILTER_SANITIZE_STRING);
                if($id){
                    Session::set("inserting_comp",$id);
                }else{
                    Misc::redirect('dodajKompaniju');
                }
        }else if(Session::exists('inserting_comp')){
            
        }else{
            Misc::redirect('dodajKompaniju');
            
        }
    }

    public function 

    public function zavrsiDodavanje(){
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else{
            Session::unset('inserting_comp');
            Misc::redirect('mojaPreduzeca');
        }
    }

    public function dodajDelatnost() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else if(!empty($_POST)){
            $idPred = Session::get('inserting_comp');
            $idDel = filter_input(INPUT_POST, 'delatnost', FILTER_SANITIZE_STRING);
            UserModel::dodajDelatnostKompaniji($idPred,$idDel);
            Misc::redirect('novoPreduzece');
        }else{
            Misc::redirect('dodajKompaniju');
        }
    }
    
    public function otvoriDelatnost() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else{
            $delatnosti = BaseModel::getActivities();
            $this->setData('delatnosti', $delatnosti);
        }
    }

    public function otvoriProizvod(){
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }
    }

    public function dodajProizvod() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }
        //TODO
    }
    
    public function otvoriTelefon(){
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }
    }

    public function dodajTelefon() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else if(!empty($_POST)){
            $idPred = Session::get('inserting_comp');
            $telefon = filter_input(INPUT_POST, 'telefon', FILTER_SANITIZE_STRING);
            UserModel::dodajTelefonKompaniji($idPred,$telefon);
            Misc::redirect('novoPreduzece');
        }else{
            Misc::redirect('dodajKompaniju');
        }
    }
    
    public function dodajSliku() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }
        //TODO
    }

    public function otvoriLokaciju(){
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else{
            $regioni = BaseModel::getRegions();
            $this->setData('regioni', $regioni);
        }
    }
    
    public function dodajLokaciju() {
        if(!Session::exists('inserting_comp')){
            Misc::redirect('dodajKompaniju');
        }else if(!empty($_POST)){
            $idPred = Session::get('inserting_comp');
            $data=[];
            $data['adresa'] = filter_input(INPUT_POST, '_adresa', FILTER_SANITIZE_STRING);
            $data['lokacija_sirina'] = filter_input(INPUT_POST, '_lokacija_sirina', FILTER_SANITIZE_STRING);
            $data['lokacija_duzina'] = filter_input(INPUT_POST, '_lokacija_duzina', FILTER_SANITIZE_STRING);
            $data['regija'] = filter_input(INPUT_POST, '_regija', FILTER_SANITIZE_STRING);
            $data['grad'] = filter_input(INPUT_POST, '_grad', FILTER_SANITIZE_STRING);
            $data['opstina'] = filter_input(INPUT_POST, '_opstina', FILTER_SANITIZE_STRING);
            UserModel::dodajLokacijuKompaniji($idPred,$data);
            Misc::redirect('novoPreduzece');
        }else{
            Misc::redirect('dodajKompaniju');
        }
    }
    
}
