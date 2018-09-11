<?php 
class BaseModel{
    
    public static function getAllMRPCompanies(){
        $SQL = "SELECT P.preduzece_sif,P.kratak_naziv,P.pun_naziv,P.kratak_opis,P.telefon,P.sajt_link,P.logotip, D.Naziv as glavna_delatnost,L.adresa,O.naziv as opstina_naziv,G.naziv as grad_naziv, R.naziv as regija_naziv, PON.otvara as pon_otvara, PON.zatvara as pon_zatvara, UTO.otvara as uto_otvara, UTO.zatvara as uto_zatvara, SRE.otvara as sre_otvara, SRE.zatvara as sre_zatvara, CET.otvara as cet_otvara, CET.zatvara as cet_zatvara, PET.otvara as pet_otvara, PET.zatvara as pet_zatvara, SUB.otvara as sub_otvara, SUB.zatvara as sub_zatvara, NED.otvara as ned_otvara, NED.zatvara as ned_zatvara FROM preduzece P, delatnosti D, lokacija L, regija R, grad G, opstina O, radno_vreme PON, radno_vreme UTO, radno_vreme SRE, radno_vreme CET, radno_vreme PET, radno_vreme SUB, radno_vreme NED WHERE P.status = 1 AND P.glavna_delatnost_sif = D.delatnosti_SIF AND P.glavna_lokacija_sif = L.lokacija_sif AND L.opstina_sif = O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif AND PON.preduzece_sif = P.preduzece_sif AND UTO.preduzece_sif = P.preduzece_sif AND SRE.preduzece_sif = P.preduzece_sif AND CET.preduzece_sif = P.preduzece_sif AND PET.preduzece_sif = P.preduzece_sif AND SUB.preduzece_sif = P.preduzece_sif AND NED.preduzece_sif = P.preduzece_sif AND PON.day = 0 AND UTO.day = 1 AND SRE.day = 2 AND CET.day = 3 AND PET.day = 4 AND SUB.day = 5 AND NED.day = 6";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute();
        if ($res) {
            return $prep->fetchAll(PDO::FETCH_OBJ);
        } else {
            return [];
        }
    }

    public static function getActivities(){
        $SQL = "SELECT delatnosti_SIF,sifra,Naziv FROM delatnosti";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute();
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }

    public static function getProductTypes(){
        $SQL = "SELECT vrsta_proizvoda_sif,naziv FROM vrsta_proizvoda";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }

    public static function getRegions(){
        $SQL = "SELECT regija_sif,naziv FROM regija";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }
    
    public static function getCities(){
        $SQL = "SELECT grad_sif,naziv,regija_sif FROM grad";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }
    
        public static function getCitiesByRegion($id){
        $SQL = "SELECT grad_sif,naziv FROM grad WHERE regija_sif=?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }

    public static function getCityParts(){
        $SQL = "SELECT opstina_sif,naziv,grad_sif FROM opstina";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }
    
    public static function getCityPartsByCity($id){
        $SQL = "SELECT opstina_sif,naziv,grad_sif FROM opstina WHERE grad_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            return $prep->fetchAll(PDO::FETCH_OBJ);
        }else{
            return [];
        }
    }

    public static function getCPCompany($id){
        $SQL = "SELECT P.pun_naziv, P.kratak_naziv, P.mat_br, P.pib, P.sajt_link, P.telefon, P.posebne_napomene, P.logotip, P.kratak_opis, D.Naziv as glavna_delatnost, L.adresa,O.naziv as opstina_naziv, G.naziv as grad_naziv, R.naziv as regija_naziv, L.kordinata_duzina, L.kordinata_sirina  FROM preduzece P, delatnosti D, lokacija L, opstina O, grad G, regija R WHERE P.status = 1 AND P.preduzece_sif = ? AND P.glavna_delatnost_sif = D.delatnosti_SIF AND P.glavna_lokacija_sif = L.lokacija_sif AND L.opstina_sif = O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        $data = [];// = array();
        if($res){
            $basic = $prep->fetch(PDO::FETCH_OBJ);
            $data["basic_data"] = $basic;
        }else{
            $data["error" ] = "Nije nadjeno preduzece";
            return $data;
        }
        
        $SQL = "SELECT T.telefon FROM telefon T WHERE T.preduzece_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $additional_telephones = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["additional_telephones"] = $additional_telephones;
        }else{
            $data["additional_telephones"] = [];
        }
        
        $SQL = "SELECT S.slika FROM slike S where S.preduzece_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $images = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["images"] = $images;
        }else{
            $data["images"] = [];
        }

        $SQL = "SELECT RV.day,RV.otvara,RV.zatvara FROM radno_vreme RV WHERE RV.preduzece_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $work_days = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["work_days"] = $work_days;
        }else{
            $data["work_days"] = [];
        }

        $SQL = "SELECT D.sifra,D.Naziv FROM delatnosti D, preduzece_delatnost PD WHERE PD.preduzece_sif = ? AND PD.delatnost_sif = D.delatnosti_SIF";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $work_type = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["work_type"] = $work_type;
        }else{
            $data["work_type"] = [];
        }

        $SQL = "SELECT L.adresa,L.kordinata_duzina,L.kordinata_sirina,O.naziv as opstina_naziv, G.naziv as grad_naziv, R.naziv as regija_naziv FROM lokacija L, opstina O, grad G, regija R WHERE L.preduzece_sif = ? AND L.opstina_sif=O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $locations = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["locations"] = $locations;
        }else{
            $data["locations"] = [];
        }

        $SQL = "SELECT NP.cena,P.naziv,P.opis,VP.naziv as naziv_vrsta_proizvoda FROM nudi_proizvod NP, proizvod P, vrsta_proizvoda VP WHERE NP.preduzece_sif = ? AND NP.proizvod_sif=P.proizvod_sif AND P.vrsta_proizvoda_sif = VP.vrsta_proizvoda_sif";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        if($res){
            $products = $prep->fetchAll(PDO::FETCH_OBJ);
            $data["products"] = $products;
        }else{
            $data["products"] = [];
        }
        return $data;
    }

    public static function getMPCompaniesFiltered($activity,$type_product,$region,$city,$city_part,$comp_name,$day,$hours){
        $SQL = "SELECT DISTINCT P.preduzece_sif,P.kratak_naziv,P.pun_naziv,P.kratak_opis,P.telefon,P.sajt_link,P.logotip, D.Naziv as glavna_delatnost,L.adresa,O.naziv as opstina_naziv,G.naziv as grad_naziv, R.naziv as regija_naziv, PON.otvara as pon_otvara, PON.zatvara as pon_zatvara, UTO.otvara as uto_otvara, UTO.zatvara as uto_zatvara, SRE.otvara as sre_otvara, SRE.zatvara as sre_zatvara, CET.otvara as cet_otvara, CET.zatvara as cet_zatvara, PET.otvara as pet_otvara, PET.zatvara as pet_zatvara, SUB.otvara as sub_otvara, SUB.zatvara as sub_zatvara, NED.otvara as ned_otvara, NED.zatvara as ned_zatvara FROM preduzece P, delatnosti D, lokacija L, regija R, grad G, opstina O, radno_vreme PON, radno_vreme UTO, radno_vreme SRE, radno_vreme CET, radno_vreme PET, radno_vreme SUB, radno_vreme NED WHERE P.status = 1 AND P.glavna_delatnost_sif = D.delatnosti_SIF AND P.glavna_lokacija_sif = L.lokacija_sif AND L.opstina_sif = O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif AND PON.preduzece_sif = P.preduzece_sif AND UTO.preduzece_sif = P.preduzece_sif AND SRE.preduzece_sif = P.preduzece_sif AND CET.preduzece_sif = P.preduzece_sif AND PET.preduzece_sif = P.preduzece_sif AND SUB.preduzece_sif = P.preduzece_sif AND NED.preduzece_sif = P.preduzece_sif AND PON.day = 0 AND UTO.day = 1 AND SRE.day = 2 AND CET.day = 3 AND PET.day = 4 AND SUB.day = 5 AND NED.day = 6";
        $parameters = [];

        if($activity != null){
            $pos = strpos($SQL,"FROM");
            $SQL = substr_replace($SQL, "preduzece_delatnost PD", $pos+4, 0);
            $SQL += " AND PD.preduzece_sif=P.preduzece_sif AND PD.delatnost_sif= ?";
            $parameters[] = $activity;
        }


        if($type_product != null){
            $SQL += " AND P.preduzece_sif IN (SELECT NP.preduzece_sif FROM nudi_proizvod NP ,proizvod PR WHERE NP.proizvod_sif = PR.proizvod_sif AND PR.vrsta_proizvoda_sif =?)";
            $parameters[] = $type_product;
        }
        if($region != null){
            $SQL += " AND R.regija_sif=?";
            $parameters[] = $region;
        }
        if($city != null){
            $SQL += " AND G.grad_sif=?";
            $parameters[] = $city;
        }

        if($city_part != null){
            $SQL += " AND O.opstina_sif = ?";
            $parameters[] = $city_part;
        }

        if($comp_name !=null){
            $SQL +=" AND (P.kratak_naziv = ? OR P.pun_naziv= ?)";
            $parameters[] = $comp_name;
            $parameters[] = $comp_name;
        }

        if($day != null){
            $pos = strpos($SQL,"FROM");
            $SQL = substr_replace($SQL, "radno_vreme RV, ", $pos+4, 0);
            $SQL += " AND RV.preduzece_sif=P.preduzece_sif AND RV.day=?";

            $parameters[] = $day;

            if($hours != null){
                $SQL += " AND RV.otvara<? AND RV.zatvara> ?";
                $parameters[] = $hours;
                $parameters[] = $hours;
            }
        }else if($hours != null){
            $pos = strpos($SQL,"FROM");
            $SQL = substr_replace($SQL, "radno_vreme RV, ", $pos+4, 0);
            $SQL += " AND RV.preduzece_sif=P.preduzece_sif AND RV.otvara<? AND RV.zatvara> ?";
            $parameters[] = $hours;
            $parameters[] = $hours;
        }

        
        
    }

}