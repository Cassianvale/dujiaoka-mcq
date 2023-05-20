<?php

return [
    'labels' => [
        'Pay' => 'Payment Channel',
        'pay' => 'Payment Channel',
    ],
    'fields' => [
        'merchant_id' => 'Merchant ID',
        'merchant_key' => 'Merchant Key',
        'merchant_pem' => 'Merchant Private Key',
        'pay_check' => 'Payment Identifier',
        'pay_client' => 'Payment Scenario',
        'pay_fee' => 'Channel Rate',
        'pay_handleroute' => 'Payment Handling Route',
        'pay_method' => 'Payment Method',
        'pay_name' => 'Payment Name',
        'is_open' => 'Enabled',
        'method_jump' => 'Jump',
        'method_scan' => 'Scan',
        'pay_client_pc' => 'Desktop',
        'pay_client_mobile' => 'Mobile',
        'pay_client_all' => 'Universal',
    ],
    'options' => [
    ],
    'helps' =>[
        'pay_fee' => 'Unit: percentage. If 0.38 is filled in, it means a 0.38% channel handling fee, which will be automatically added to the price when ordering.'
    ]
];