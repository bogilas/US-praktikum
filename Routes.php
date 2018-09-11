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
            'Pattern'    => '|^dodatno/?$|',
            'Controller' => 'User',
            'Method'     => 'dodatno'            
        ],        
        [
            'Pattern'    => '|^dodajDelatnost/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajDelatnost'            
        ],
        [
            'Pattern'    => '|^dodajProizvod/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajProizvod'            
        ],
        [
            'Pattern'    => '|^dodajTelefon/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajTelefon'            
        ],        
        [
            'Pattern'    => '|^dodajSliku/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajSliku'            
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
