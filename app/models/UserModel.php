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

    public static function getByUsernameAndPasswordHash($username, $passwordHash) {
        $SQL = 'SELECT * FROM preduzetnik WHERE email = ? AND sifra = ?';
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$username, $passwordHash]);
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
}
