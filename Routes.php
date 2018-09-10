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
            'Pattern'    => '|^.*$|',
            'Controller' => 'Main',
            'Method'     => 'index'
        ]
    ];
