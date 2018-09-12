<?php

class AdminController extends Controller{

   public final function __pre() {
       if (!Session::exists('admin_id')) {
           Misc::redirect('preduzeca');
       }
   }


    public function odobriZahtev($id){
        AdminModel::setCompanyActive($id);
    }

    public function info(){
        $data = AdminModel::getAllInactiveCompanies();
        $this->setData('preduzeca',$data);
    }

    public function odobravanje($id){
        $data = AdminModel::getInactiveCompany($id);
        if($data===false){
            Misc::redirect('info');
        }
        else{    
            $this->setData('preduzece',$data);
        }
    }

}