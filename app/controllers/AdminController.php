<?php

class AdminController extends Controller{

    public final function __pre() {
        if (!Session::exists('admin_id')) {
            //TODO
            Misc::redirect('logout');
        }
    }


    public function odobriZahtev($id){
        $SQL = "UPDATE preduzece SET 'status' = 1 WHERE preduzece_sif = ?";
        $prep = DataBase::getInstance()->prepare($SQL);
        $res = $prep->execute($id);
    }


}