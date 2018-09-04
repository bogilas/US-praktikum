<?php

class GuestController extends Controller {
    
    public function index() {
        $delatnosti;
        $this->setData('delatnosti', $delatnosti);
        
        $vesti;
        $this->setData('vesti', $vesti);
    }
    
    public function preduzeca() {
        $preduzeca;
        $this->setData('preduzeca', $preduzeca);
    }
    
    public function preduzece($preduzece_id) {
//        getById $preduzece_id
        $preduzece;
        $this->setData('preduzece', $preduzece);
    }
}

