<?php
return [
    'BE' => [
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$P$C8iYoJgtacmrYCSLxBlXVsIreCmhhE1',
        'loginSecurityLevel' => 'rsa',
    ],
    'DB' => [
        'database' => 'userlike-typo3',
        'host' => '127.0.0.1',
        'password' => 'userlike-typo3',
        'port' => 3306,
        'socket' => '',
        'username' => 'userlike-typo3',
    ],
    'EXT' => [
        'extConf' => [
            'rsaauth' => 'a:1:{s:18:"temporaryDirectory";s:0:"";}',
            'saltedpasswords' => 'a:2:{s:3:"BE.";a:4:{s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}s:3:"FE.";a:5:{s:7:"enabled";i:1;s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}}',
        ],
    ],
    'FE' => [
        'loginSecurityLevel' => 'rsa',
    ],
    'GFX' => [
        'jpg_quality' => '80',
    ],
    'SYS' => [
        'encryptionKey' => '71b96a1a2e1165643d9f11cdedd67a8ccc738ee23d71e6b8578545f2735e29a2a1a99d649e750b5ff011db2d16ead62f',
        'isInitialDatabaseImportDone' => false,
        'isInitialInstallationInProgress' => true,
        'sitename' => 'UserLike Typo3 Test',
    ],
];
