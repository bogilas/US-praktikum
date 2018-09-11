<?php

class AdminController extends Controller{

    public final function __pre() {
        if (!Session::exists('admin_id')) {
            //TODO
            Misc::redirect('logout');
        }
    }


    public function odobriZahtev($id){
        AdminModel::setCompanyActive($id);
    }

    public function pregledNeaktivnihPreduzeca(){
        $data = AdminModel::getAllInactiveCompanies();
        $this->setData('preduzeca',$data);
    }

    public function pregledNeaktivnogPreduzeca($id){
        $data = AdminModel::getInactiveCompany($id);
        $this->setData('preduzece',$data);
    }


}