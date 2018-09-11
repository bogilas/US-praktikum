<?php
    return [
        [
            'Pattern'    => '|^login/?$|',
            'Controller' => 'Main',
            'Method'     => 'login'
        ],
        [
            'Pattern'    => '|^logout/?$|',
            'Controller' => 'Main',
            'Method'     => 'logout'
        ],
        [
            'Pattern'    => '|^preduzeca/?$|',
            'Controller' => 'Main',
            'Method'     => 'preduzeca'
        ],
        [
            'Pattern'    => '|^preduzece/([0-9]+)/?$|',
            'Controller' => 'Main',
            'Method'     => 'preduzece'            
        ],
        [
            'Pattern'    => '|^prijava/?$|',
            'Controller' => 'Main',
            'Method'     => 'prijava'            
        ],
        [
            'Pattern'    => '|^registracija/?$|',
            'Controller' => 'Guest',
            'Method'     => 'registracija'            
        ],
        [
            'Pattern'    => '|^dodajKompaniju/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajKompaniju'            
        ],
        [
            'Pattern'    => '|^novoPreduzece/?$|',
            'Controller' => 'User',
            'Method'     => 'novoPreduzece'            
        ],
        [
            'Pattern'    => '|^info/?$|',
            'Controller' => 'Admin',
            'Method'     => 'info'
        ],
        [
            'Pattern'    => '|^odobravanje/([0-9]+)/?$|',
            'Controller' => 'Admin',
            'Method'     => 'odobravanje'
        ],
        [
            'Pattern'    => '|^ajaxCallCity/([0-9]+)/?$|',
            'Controller' => 'Main',
            'Method'     => 'ajaxCityCallResponse'
        ],
        [
            'Pattern'    => '|^ajaxCallDistrict/([0-9]+)/?$|',
            'Controller' => 'Main',
            'Method'     => 'ajaxDistrictCallResponse'
        ],
        [
            'Pattern'    => '|^.*$|',
            'Controller' => 'Main',
            'Method'     => 'index'
        ]
    ];
