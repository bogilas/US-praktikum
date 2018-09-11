<?php

class UserController extends Controller {
    
    public function dodajKompaniju() {
        $delatnosti = BaseModel::getActivities();
        $proizvodi = BaseModel::getProductTypes();
        $regioni = BaseModel::getRegions();
        $this->setData('delatnosti', $delatnosti);
        $this->setData('proizvodi', $proizvodi);
        $this->setData('regioni', $regioni);
    }
    
    public  function novoPreduzece(){
        if(!empty($_POST)){
                $punNaziv = filter_input(INPUT_POST, '_punNaziv', FILTER_SANITIZE_STRING);
                $kratakNaziv = filter_input(INPUT_POST, '_kratakNaziv', FILTER_SANITIZE_STRING);
                $matBroj = filter_input(INPUT_POST, '_matBroj', FILTER_SANITIZE_STRING);
                $pib= filter_input(INPUT_POST, '_pib', FILTER_SANITIZE_STRING);
                $sajtLink = filter_input(INPUT_POST, '_sajtLink', FILTER_SANITIZE_STRING);
                $telefon = filter_input(INPUT_POST, '_telefon', FILTER_SANITIZE_STRING);
                $posebneNapomene = filter_input(INPUT_POST, '_posebneNapomene', FILTER_SANITIZE_STRING);
                $logotip = filter_input(INPUT_POST, '_logotip', FILTER_SANITIZE_STRING);
                $kratakOpis = filter_input(INPUT_POST, '_kratakOpis', FILTER_SANITIZE_STRING);
                $adresa = filter_input(INPUT_POST, '_adresa', FILTER_SANITIZE_STRING);
                $lokacija_sirina = filter_input(INPUT_POST, '_lokacija_sirina', FILTER_SANITIZE_STRING);
                $lokacija_duzina = filter_input(INPUT_POST, '_lokacija_duzina', FILTER_SANITIZE_STRING);
                $delatnost = filter_input(INPUT_POST, '_delatnost', FILTER_SANITIZE_STRING);
                $regija = filter_input(INPUT_POST, '_regija', FILTER_SANITIZE_STRING);
                $grad = filter_input(INPUT_POST, '_grad', FILTER_SANITIZE_STRING);
                $opstina = filter_input(INPUT_POST, '_opstina', FILTER_SANITIZE_STRING);
                $pOd = filter_input(INPUT_POST, '_pOd', FILTER_SANITIZE_STRING);
                $pDo = filter_input(INPUT_POST, '_pDo', FILTER_SANITIZE_STRING);
                $uOd = filter_input(INPUT_POST, '_uOd', FILTER_SANITIZE_STRING);
                $uDo = filter_input(INPUT_POST, '_uDo', FILTER_SANITIZE_STRING);
                $sOd = filter_input(INPUT_POST, '_sOd', FILTER_SANITIZE_STRING);
                $sDo = filter_input(INPUT_POST, '_sDo', FILTER_SANITIZE_STRING);
                $cOd = filter_input(INPUT_POST, '_cOd', FILTER_SANITIZE_STRING);
                $cDo = filter_input(INPUT_POST, '_cDo', FILTER_SANITIZE_STRING);
                $peOd = filter_input(INPUT_POST, '_peOd', FILTER_SANITIZE_STRING);
                $peDo = filter_input(INPUT_POST, '_peDo', FILTER_SANITIZE_STRING);
                $suOd = filter_input(INPUT_POST, '_suOd', FILTER_SANITIZE_STRING);
                $suDo = filter_input(INPUT_POST, '_suDo', FILTER_SANITIZE_STRING);
                $neOd = filter_input(INPUT_POST, '_neOd', FILTER_SANITIZE_STRING);
                $neDo = filter_input(INPUT_POST, '_neDo', FILTER_SANITIZE_STRING);
                
        }else{
            Misc::redirect('dodajKompaniju');
        }
    }
    
}
