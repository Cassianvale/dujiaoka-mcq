<?php
/**
 * The file was created by Assimon.
 *
 * @author    assimon<ashang@utf8.hk>
 * @copyright assimon<ashang@utf8.hk>
 * @link      http://utf8.hk/
 */

return [
    'labels' => [
        'SystemSetting' => 'System Configuration',
        'system-setting' => 'System Configuration',
        'base_setting' => 'Basic Configuration',
        'mail_setting' => 'Email Service',
        'order_push_setting' => 'Order Push Configuration',
        'order_setting' => 'Order Configuration',
        'geetest' => 'Geetest Verification',
    ],

    'fields' => [
        'title' => 'Website Title',
        'text_logo' => 'Text Logo',
        'img_logo' => 'Image Logo',
        'keywords' => 'Website Keywords',
        'description' => 'Website Description',
        'notice' => 'Site Announcement',
        'footer' => 'Custom Code in Page Footer',
        'manage_email' => 'Administrator Email',
        'is_open_anti_red' => 'Open WeChat/QQ Anti-Red',
        'is_open_search_pwd' => 'Open Search Password',
        'is_open_google_translate' => 'Open Google Translation',

        'is_open_img_code' => 'Open Image Verification Code',
        'is_cn_challenge' => 'Verify Human Behavior for Visitors from Mainland China',
        'order_expire_time' => 'Order Expiration Time (Minutes)',
        'order_ip_limits' => 'Maximum Number of <code>Unpaid</code> Orders per IP Simultaneously',

        'is_open_server_jiang' => 'Whether to Open Server Chan Notification',
        'server_jiang_token' => 'Your Server Chan Token',
        'is_open_telegram_push' => 'Whether to Open Telegram Notification',
        'telegram_userid' => 'Your Telegram User ID',
        'telegram_bot_token' => 'Your Telegram Bot Token',
        'is_open_bark_push' => 'Whether to Open Bark Notification',
        'is_open_bark_push_url' => 'Whether to Push Order URL',
        'bark_server' => 'Your Bark Server',
        'bark_token' => 'Your Bark Token',
        'is_open_qywxbot_push' => 'Whether to Open Enterprise WeChat Bot Notification',
        'qywxbot_key' => 'Your Enterprise WeChat Bot Token',

        'template' => 'Site Template',
        'language' => 'Site Language',

        'driver' => 'Email Driver',
        'host' => 'SMTP Server Address',
        'port' => 'Port',
        'username' => 'Account',
        'password' => 'Password',
        'encryption' => 'Protocol',
        'from_address' => 'Sender Address',
        'from_name' => 'Sender Name',

        'geetest_id' => 'Geetest ID',
        'geetest_key' => 'Geetest Key',
        'is_open_geetest' => 'Whether to Open Geetest Verification',
    ],
    'options' => [
    ],
    'rule_messages' => [
        'save_system_setting_success' => 'System Configuration Saved Successfully!',
        'change_reboot_php_worker' => 'Modifications made to some configurations require restarting the [supervisor] or php process management tool to take effect, such as for email services and server Chan notifications.'
    ]
];
