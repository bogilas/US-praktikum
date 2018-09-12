<?Php 

class AdminModel extends BaseModel{
    
    public static function getAllInactiveCompanies(){
        $SQL = "SELECT P.preduzece_sif,P.kratak_naziv,P.kratak_opis FROM preduzece P WHERE P.status = 0";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute();
        if ($res) {
            return $prep->fetchAll(PDO::FETCH_OBJ);
        } else {
            return [];
        }
    }

    public static function setCompanyActive($id){
        $SQL ="UPDATE preduzece P SET P.status = 1 WHERE P.preduzece_sif = ?";
        $prep=DataBase::getInstance()->prepare($SQL);
        $prep->execute([$id]);
        
    }

    public static function getInactiveCompany($id){
        $SQL = "SELECT P.preduzece_sif, P.pun_naziv, P.kratak_naziv, P.mat_br, P.pib, P.sajt_link, P.telefon, P.posebne_napomene, P.logotip, P.kratak_opis, D.Naziv as glavna_delatnost, L.adresa,O.naziv as opstina_naziv, G.naziv as grad_naziv, R.naziv as regija_naziv, L.kordinata_duzina, L.kordinata_sirina  FROM preduzece P, delatnosti D, lokacija L, opstina O, grad G, regija R WHERE P.status = 0 AND P.preduzece_sif = ? AND P.glavna_delatnost_sif = D.delatnosti_SIF AND P.glavna_lokacija_sif = L.lokacija_sif AND L.opstina_sif = O.opstina_sif AND O.grad_sif = G.grad_sif AND G.regija_sif = R.regija_sif";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute([$id]);
        $data = [];// = array();
        if($res){
            $basic = $prep->fetch(PDO::FETCH_OBJ);
            if(!$basic){
                return false;
            }
            $data["basic_data"] = $basic;
        }else{
            $data["error"] = "Nije nadjeno preduzece";
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
}