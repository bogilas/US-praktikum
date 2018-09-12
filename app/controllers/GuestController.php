<?php

class GuestController extends Controller {
    
    public function registracija(){
        if(!empty($_POST)){
            $ime = filter_input(INPUT_POST, 'ime', FILTER_SANITIZE_STRING);
            $prezime = filter_input(INPUT_POST, 'prezime', FILTER_SANITIZE_STRING);
            $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
            $telefon = filter_input(INPUT_POST, 'telefon', FILTER_SANITIZE_STRING);
            $adresa = filter_input(INPUT_POST, 'adresa', FILTER_SANITIZE_STRING);
            $sifra = filter_input(INPUT_POST, 'sifra', FILTER_SANITIZE_STRING);

            $user = UserModel::checkEmailUnique($email);
            if($user === true){
                $id = UserModel::insertUser($ime,$prezime,$sifra,$telefon,$adresa,$email);
                Session::set('user_id', $id);
                Misc::redirect('preduzeca');
            }else{
                Session::set('error',"Mail zauzet.");
                Misc::redirect('');
            }
        }
    } 
}

