<?php

return [
    'labels' => [
        'Coupon' => 'Discount code',
        'coupon' => 'Discount code',
    ],
    'fields' => [
        'type' => 'Discount type',
        'discount' => 'Discount amount/coefficient',
        'is_open' => 'Is enabled',
        'coupon' => 'Discount code',
        'ret' => 'Remaining usage times',
        'type_one_time' => 'One-time use',
        'type_repeat' => 'Reusable',
        'type_percent' => 'Coefficient discount (0-1)',
        'type_fixed' => 'Fixed overall amount',
        'type_each' => 'Fixed amount per piece',
        'goods_id' => 'Available product'
    ],
    'options' => [],
    'helps' => [
        'discount' => 'Coefficient discount: The price will be multiplied by this number when placing an order, 0.9 means a 10% discount. Fixed amount: The price will be directly reduced when placing an order.'
    ]
];

