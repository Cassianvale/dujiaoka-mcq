<?php

return [
    'labels' => [
        'Pay' => '支付通道',
        'pay' => '支付通道',
    ],
    'fields' => [
        'merchant_id' => '商户 ID',
        'merchant_key' => '商户 KEY',
        'merchant_pem' => '商户密钥',
        'pay_check' => '支付标识',
        'pay_client' => '支付场景',
        'pay_fee' => '通道费率',
        'pay_handleroute' => '支付处理路由',
        'pay_method' => '支付方式',
        'pay_name' => '支付名称',
        'is_open' => '是否启用',
        'method_jump' => '跳转',
        'method_scan' => '扫码',
        'pay_client_pc' => '电脑PC',
        'pay_client_mobile' => '手机',
        'pay_client_all' => '通用',
    ],
    'options' => [
    ],
    'helps' =>[
        'pay_fee' => '单位百分比。如填写0.38，则代表0.38%的通道手续费，下单时价格会自动加上这笔手续费。'
    ]
];
