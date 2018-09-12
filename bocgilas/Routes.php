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
            'Pattern'    => '|^otvoriDelatnost/?$|',
            'Controller' => 'User',
            'Method'     => 'otvoriDelatnost'            
        ],
        [
            'Pattern'    => '|^otvoriProizvod/?$|',
            'Controller' => 'User',
            'Method'     => 'otvoriProizvod'            
        ],
        [
            'Pattern'    => '|^otvoriTelefon/?$|',
            'Controller' => 'User',
            'Method'     => 'otvoriTelefon'            
        ],        
        [
            'Pattern'    => '|^otvoriSliku/?$|',
            'Controller' => 'User',
            'Method'     => 'otvoriSliku'            
        ],
        [
            'Pattern'    => '|^otvoriLokaciju/?$|',
            'Controller' => 'User',
            'Method'     => 'otvoriLokaciju'            
        ],        
        [
            'Pattern'    => '|^dodajTelefon/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajTelefon'            
        ],        
        [
            'Pattern'    => '|^dodajLokaciju/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajLokaciju'            
        ],        
        [
            'Pattern'    => '|^dodajProizvod/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajProizvod'            
        ],
        [
            'Pattern'    => '|^dodajSliku/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajSliku'            
        ],        
        [
            'Pattern'    => '|^dodajDelatnost/?$|',
            'Controller' => 'User',
            'Method'     => 'dodajDelatnost'            
        ],
        
        [
            'Pattern'    => '|^info/?$|',
            'Controller' => 'Admin',
            'Method'     => 'info'
        ],
        [
            'Pattern'    => '|^odobriZahtev/([0-9]+)/?$|',
            'Controller' => 'Admin',
            'Method'     => 'odobriZahtev'
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
