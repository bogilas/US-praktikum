<?php
class UserModel extends BaseModel {
    public static function getAll() {
        $SQL = 'SELECT * FROM preduzetnik;';
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute();
        if ($res) {
            return $prep->fetchAll(PDO::FETCH_OBJ);
        } else {
            return [];
        }
    }

    public static function getById($id) {
        $SQL = 'SELECT * FROM preduzetnik WHERE preduzetnik_sif = ?;';
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if ($res) {
            return $prep->fetch(PDO::FETCH_OBJ);
        } else {
            return null;
        }
    }

    public static function getByUsernameAndPasswordHash($email, $passwordHash) {
        $SQL = 'SELECT * FROM preduzetnik WHERE email = ? AND sifra = ?';
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$email, $passwordHash]);
        if ($res) {
            return $prep->fetch(PDO::FETCH_OBJ);
        } else {
            return null;
        }
    }

    public static function getMyCompanies($user_id){
        $SQL="SELECT P.kratak_naziv,P.pun_naziv,P.kratak_opis,P.telefon,P.sajt_link,P.logotip, D.Naziv as glavna_delatnost,L.adresa,O.naziv as opstina_naziv,G.naziv as grad_naziv, R.naziv as regija_naziv, PON.otvara as pon_otvara, PON.zatvara as pon_zatvara, UTO.otvara as uto_otvara, UTO.zatvara as uto_zatvara, SRE.otvara as sre_otvara, SRE.zatvara as sre_zatvara, CET.otvara as cet_otvara, CET.zatvara as cet_zatvara, PET.otvara as pet_otvara, PET.zatvara as pet_zatvara, SUB.otvara as sub_otvara, SUB.zatvara as sub_zatvara, NED.otvara as ned_otvara, NED.zatvara as ned_zatvara FROM preduzece P, delatnosti D, lokacija L, regija R, grad G, opstina O, radno_vreme PON, radno_vreme UTO, radno_vreme SRE, radno_vreme CET, radno_vreme PET, radno_vreme SUB, radno_vreme NED WHERE P.status = 1 AND P.glavna_delatnost_sif = D.delatnosti_SIF AND P.glavna_lokacija_sif = L.lokacija_sif AND L.opstina_sif = O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif AND PON.preduzece_sif = P.preduzece_sif AND UTO.preduzece_sif = P.preduzece_sif AND SRE.preduzece_sif = P.preduzece_sif AND CET.preduzece_sif = P.preduzece_sif AND PET.preduzece_sif = P.preduzece_sif AND SUB.preduzece_sif = P.preduzece_sif AND NED.preduzece_sif = P.preduzece_sif AND PON.day = 0 AND UTO.day = 1 AND SRE.day = 2 AND CET.day = 3 AND PET.day = 4 AND SUB.day = 5 AND NED.day = 6 AND P.preduzetnik_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$user_id]);
        if($res){
            return $prep->fetch(PDO::FETCH_OBJ);
        }else{
            return null;
        }
    }
    
    public static function insertCompany($data){
        $SQL = "INSERT INTO lokacija(opstina_sif, adresa, kordinata_duzina, kordinata_sirina) VALUES (?,?,?,?)";
        $pdo = DataBase::getInstance();
        $prep = $pdo->prepare($SQL);
        $res = $prep->execute([$data['glavna_lokacija'].['opstina_sif'],$data['glavna_lokacija'].['adresa'],$data['glavna_lokacija'].['kordinata_duzina'],$data['glavna_lokacija'].['kordinata_sirina']]);
        if($res){
            $main_loc_id = $pdo->lastInsertId();
            $SQL = "INSERT INTO preduzece(pun_naziv, kratak_naziv, mat_br, pib, sajt_link, telefon, posebne_napomene, preduzetnik_sif,'status',logotip, kratak_opis, glavna_lokacija_sif, glavna_delatnost_sif) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $pdo = DataBase::getInstance();
            $prep = $pdo->prepare($SQL);
            $res = $prep->execute([$data['pun_naziv'],$data['kratak_naziv'],$data['mat_br'],$data['pib'],$data['sajt_link'],$data['telefon'],$data['posenbne_napomene'],$data['preduzetnik_sif'],0,$data['logotip'],$data['kratak_opis'],$main_loc_id,$data['glavna_delatnost_sif']]);
            if($res){
                $company_id = $pdo->lastInsertId();

                $SQL = "INSERT INTO lokacija(opstina_sif, adresa, kordinata_duzina, kordinata_sirina, preduzece_sif) VALUES (?,?,?,?,?)";
                foreach($data['lokacije'] as $lokacija){
                    $prep = DataBase::getInstance()->prepare($SQL);
                    $res = $prep->execute([$lokacija['opstina_sif'],$lokacija['adresa'],$lokacija['kordinata_duzina'],$lokacija['kordinata_sirina'],$company_id]);
                }

                $SQL = "INSERT INTO preduzece_delatnost (preduzece_sif,delatnost_sif) VALUES (?,?)";
                foreach($data['delatnosti'] as $delatnost){
                    $prep = DataBase::getInstance()->prepare($SQL);
                    $res = $prep->execute([$company_id,$delatnost]);
                }

                $SQL = "INSERT INTO telefon (telefon,preduzece_sif) VALUES (?,?)";
                foreach($data['telefoni'] as $t){
                    $prep = DataBase::getInstance()->prepare($SQL);
                    $res = $prep->execute([$t,$company_id]);
                }
                
                $SQL = "INSERT INTO slike (slika,preduzece_sif) VALUES (?,?)";
                foreach($data['slike'] as $s){
                    $prep = DataBase::getInstance()->prepare($SQL);
                    $res = $prep->execute([$s,$company_id]);
                }

                $SQL = "INSERT INTO radno_vreme(preduzece_sif,'day',otvara,zatvara) VALUES(?,?,?,?)";
                foreach($data['radno_vreme'] as $rv){
                    $prep = DataBase::getIntance()->prepare($SQL);
                    $res = $prep->execute([$company_id,$rv['day'],$rv['otvara'],$rv['zatvara']]);
                }

            }else{
                deleteLocation($main_loc_id);
            }

        }else{
            return false;
        }
    }

    public static function deleteLocation($id){
        $SQL = "DELETE FROM lokacija WHERE lokacija_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
    }

    public static function addCompanyProduct($data,$company_id){
        if(isset($data["naziv"])){
            $SQL = "INSERT INTO proizvod(naziv,opis,vrsta_proizvoda_sif) VALUES (?,?,?)";
            $pdo = DataBase::getInstance();
            $prep = $pdo->prepare($SQL);
            $res = $prep->execute([$data['naziv'],$data['opis'],$data['vrsta_proizvoda_sif']]);
            if($res){
                $id = $pdo->lastInsertId();
                return setProdToCompany($id,$company_id,$data['cena']);
            }else{
                return false;
            }
        }else{
            return setProdToCompany($data['proizvod_sif'],$company_id,$data['cena']);
        }
    }

    public static function setProdToCompany($prod_id,$comp_id,$price){
        $SQL = "INSERT INTO nudi_proizvod (cena,proizvod_sif,preduzece_sif) VALUES (?,?,?)";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$price,$prod_id,$comp_id]);
        if($res)
            return true;
        else 
            return false;
    }

    public static function insertUser($ime,$prezime,$sifra,$telefon,$adresa,$email){
        var_dump($ime);
        $SQL = "INSERT INTO preduzetnik (ime,prezime,sifra,telefon,adresa,email) VALUES (?,?,?,?,?,?)";
        $pdo = DataBase::getInstance();
        $prep = $pdo->prepare($SQL);
        $res = $prep->execute([$ime,$prezime,$sifra,$telefon,$adresa,$email]);
        var_dump($res);
        if($res){
            return $pdo->lastInsertId();
        }
    }


    public static function checkEmailUnique($email){
        $SQL = "SELECT * FROM preduzetnik WHERE email = '?'";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$email]);
        if($res){
            return false;
        }else{
            return true;
        }
    }

}
