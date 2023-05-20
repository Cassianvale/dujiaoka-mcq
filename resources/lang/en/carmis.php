<?php

return [
    'labels' => [
        'Carmis' => 'Card Key',
        'carmis' => 'Card Key',
    ],
    'fields' => [
        'goods_id' => 'Associated Product',
        'status' => 'Status',
        'carmi' => 'Card Key Content',
        'info' => 'Card Key Information',
        'info_preg' => 'Card Key Information Regex/Separator',
        'status_unsold' => 'Unsold',
        'status_sold' => 'Sold',
        'is_loop' => 'Loop Card Key',
        'yes' => 'Yes',
        'import_carmis' => 'Import Card Keys',
        'carmis_list' => 'List of Card Keys',
        'carmis_txt' => 'Text of Card Keys',
        'are_you_import_sure' => 'Are you sure you want to import the card keys?',
        'remove_duplication' => 'Remove Duplicates',
    ],
    'options' => [],
    'helps' => [
        'carmis_list' => 'One key per line,separated by a line break. Do not import card keys with single text length,as it may cause memory overflow. If the card key is too long,it is recommended to change the product to manual processing.',
        'carmis_info' => 'If the product supports self-selection,the card key information will be displayed on the purchase page for customers to choose on their own.',
        'info_preg' => 'Supports regular expressions (checked first) or separators to filter card keys. <br> The regular expression will select the first string that meets the condition as the card key information. <br> The separator will use the last string as the card key information. E.g.,<code>c1---c2---c3</code>,using <code>---</code> as the separator,<code>c3</code> will be selected as the card key information.',
    ],
    'rule_messages' => [
        'carmis_list_and_carmis_txt_can_not_be_empty' => 'Please fill in the card keys to be imported or select the card key file to be uploaded',
        'import_carmis_success' => 'Card keys imported successfully!',
    ]
];
