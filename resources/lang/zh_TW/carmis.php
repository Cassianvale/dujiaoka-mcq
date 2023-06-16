<?php

return [
    'labels' => [
        'Carmis' => '卡密',
        'carmis' => '卡密',
    ],
    'fields' => [
        'goods_id' => '所屬商品',
        'status' => '售出狀態',
        'carmi' => '卡密內容',
        'status_unsold' => '未售出',
        'status_sold' => '已售出',
        'is_loop' => '循環卡密',
		'yes'=>'是',
        'no' => '否',
        'import_carmis' => '匯入卡密',
        'carmis_list' => '卡密清單',
        'carmis_txt' => '卡密文字',
        'are_you_import_sure' => '確定要匯入卡密嗎？',
        'remove_duplication' => '是否去重',
    ],
    'options' => [
    ],
    'helps' => [
        'carmi_contents' => '卡密模糊查询',
        'carmis_list' => '一行一个，回车分隔。请勿导入单个文本长度过大的卡密，容易导致内存溢出。如果卡密过大建议修改商品为人工处理',
        'carmis_info' => '若商品支持自选，卡密信息将会展示在购买页供顾客自行选择',
        'info_preg' => '支持正则表达式（优先判定）或用分隔符来筛选卡密。<br>正则表达式将会将符合条件的第一个字符串作为卡密信息。<br>分隔符将会使用最后一个字符串作为卡密信息，如<code>c1---c2---c3</code>，使用<code>---</code>作为分隔符，<code>c3</code>会作为卡密信息。',
        ],
    'rule_messages' => [
        'carmis_list_and_carmis_txt_can_not_be_empty' => '請填寫需要匯入的卡密或選取需要上傳的卡密檔案',
        'import_carmis_success' => '匯入卡密成功！'
    ]
];
