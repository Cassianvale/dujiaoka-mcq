<?php

return [
    'labels' => [
        'Goods' => 'Product',
        'goods' => 'Product',
        'soldout' => 'Sold Out'
    ],
    'fields' => [
        'sell_price' => 'Selling Price',
        'preselection' => 'Optional Price',
        'group_id' => 'Belongs to Category',
        'api_hook' => 'Callback Event',
        'buy_prompt' => 'Purchase Prompt',
        'description' => 'Product Description',
        'gd_name' => 'Product Name',
        'gd_description' => 'Product Description',
        'gd_keywords' => 'Product Keywords',
        'in_stock' => 'Stock Quantity',
        'ord' => 'Sort Weight',
        'other_ipu_cnf' => 'Other Input Box Configuration',
        'picture' => 'Product Image',
        'picture_url' => 'Product Image URL',
        'sales_volume' => 'Sales Volume',
        'type' => 'Product Type',
        'buy_limit_num' => 'Max Quantity in One Order',
        'wholesale_price_cnf' => 'Wholesale Price Configuration',
        'automatic_delivery' => 'Automatic Delivery',
        'manual_processing' => 'Manual Processing',
        'is_open' => 'On Sale?',
        'coupon_id' => 'Available Coupons',
        'payment_limit' => 'Payment Method Limit'
    ],
    'options' => [],
    'helps' => [
        'picture' => 'Upload optional, default image used if left blank',
        'picture_url' => 'Enter external URL to replace product image.',
        'in_stock' => 'Manual Processing: manually entered stock quantity. Automatic Delivery: system recognizes stock quantity',
        'buy_limit_num' => 'Prevent stockpiling, 0 means no order quantity limit',
        'other_ipu_cnf' => '<code>unique identifier=box name=mandatory or not</code> (One line per box)',
        'wholesale_price_cnf' => 'Enter 5=3 to indicate item price is 3 yuan when customer buys 5 or more (One line per configuration)',
        'payment_limit' => 'Only allow these payment methods. If empty, all enabled methods are supported.',
        'preselection' => 'Products with automatic delivery support pre-selecting card information and optional prices. Configure in card information section.'
    ]
];
