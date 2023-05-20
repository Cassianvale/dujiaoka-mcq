<?php

/**
 * The file was created by outtime and aided with ChatGPT.
 *
 * @author    outtime<i@treeo.cn>
 * @copyright outtime<i@treeo.cn>
 * @link      https://outti.me
 */

return [
    'official_website' => 'Official Website',
    'dashboard' => 'Dashboard',
    'dashboard_description' => 'On the way to every dream, let\'s go together....!',
    'join_qq_group' => 'Join QQ Group',
    'join_telegram_group' => 'Join Telegram Group',
    'is_open' => 'Is Open',
    'trashed' => 'Trashed',
    'restore' => 'Restore',
    'are_you_restore_sure' => 'Are you sure to restore?',
    'restored' => 'Restored',
    'ord' => 'The larger the value, the higher the ranking',
    'status_open' => 'Open',
    'status_close' => 'Close',
    'sales_data' => 'Sales Data',
    'order_success_rate' => 'Order Success Rate',
    'order_count_number' => 'Total Order Count',
    'this_seven_days' => 'This Week',
    'this_today' => 'Today',
    'this_month' => 'This Month',
    'this_year' => 'This Year',

    'status_pending_number' => 'Pending Order Count',
    'status_processing_number' => 'Processing Order Count',
    'status_completed_number' => 'Completed Order Count',
    'status_failure_number' => 'Failed Order Count',
    'status_abnormal_number' => 'Abnormal Order Count',

    'payment_chart' => 'Payment Data',
    'payment_successful_number' => 'Successful Payment Count',
    'unpaid_number' => 'Unpaid Count',

    'sales_chart' => 'Sales',
    'popular_goods' => 'Popular Goods',
    'warning_title' => 'Please Note!!',
    'error_title' => 'Error Occurred~',
    'callback' => 'Back',
    'reset' => 'Reset',
    'search_now' => 'Search Now',

    'home_page' => 'Home',
    'article_page' => 'Related Articles',
    'group_all' => 'All',
    'order_search' => 'Order Search',
    'site_announcement' => 'Announcement',
    'price' => 'Price',
    'wholesale_discount' => 'Wholesale Price',
    'order_now' => 'Order Now',
    'not' => 'N/A',
    'close' => 'Close',
    'discount' => 'Discount',
    'home_discount'  => 'Home Discount',
    'share_qr' => 'Share This Product',
    'by_amount' => 'Buy',
    'or_the_above' => 'Or Above',
    'each' => 'Each',
    'email' => 'Email',
    'shipping_email' => 'Receiving Mailbox',
    'payment_method' => 'Payment Method',
    'payment_fee' => 'Payment Gateway Fee',
    'search_password' => 'Order Search Password',
    'img_verify_code' => 'Image Verification Code',
    'coupon_code' => 'Coupon Code',
    'copy_text' => 'Copy',
    'search_goods_name' => 'Goods Name...',
    'preselection' => 'You can choose your own card code, and you need to add a fee',

    'behavior_verification' => 'Behavior Verification',
    'click_to_behavior_verification' => 'Click to complete the behavior verification here',
    'success_behavior_verification' => 'Behavior verification completed',
    'fail_behavior_verification' => 'Behavior verification failed',
    'please_complete_the_behavior_verification_correctly' => 'Please complete the behavior verification correctly',

    'confirm_order' => 'Confirm Order',
    'date_to_expired_order' => 'The order will expire in :min minutes if payment is not completed',
    'order_information' => 'Order Information',
    'pay_immediately' => 'Pay Immediately',
    'amount_to_be_paid' => 'Amount to be Paid',
    'open_the_app_to_pay' => 'Open App to Pay',
    'order_search_by_sn' => 'Search Order by SN',
    'order_search_by_email' => 'Search Order by Email',
    'order_search_by_browser' => 'Search Order by Browser',

    'scan_qrcode_to_pay' => 'Scan QR Code to Pay',
    'pay_order_expiration_date_prompt' => 'Please scan the QR code in the App to pay! Valid for :min minutes',
    'money_symbol' => '￥',
    'purchase_limit' => 'Limit per Order',


    'prompt' => [
        'server_illegal_request' => 'Illegal request!',
        'the_goods_is_not_on_the_shelves' => 'The product is not on the shelves!',
        'wholesale_price_format_error' => 'Wholesale price setting error',
        'by_amount_not_null' => 'Purchase quantity cannot be 0',
        'inventory_shortage' => 'Insufficient inventory',
        'please_select_mode_of_payment' => 'Please select payment method',
        'goods_does_not_exist' => 'Product does not exist',
        'search_password_can_not_be_empty' => 'Please enter the order query password',
        'image_verify_code_error' => 'Incorrect image verification code',
        'buy_amount_format_error' => 'Please enter the correct purchase quantity',
        'email_format_error' => 'Please enter a correct email',
        'geetest_validate_fail' => 'Behavior verification failed',
        'purchase_limit_exceeded' => 'Single purchase quantity exceeds limit',
        'coupon_does_not_exist' => 'Coupon does not exist',
        'coupon_lack_of_available_opportunities' => 'The coupon has insufficient available times of use',
        'can_not_be_empty' => 'Cannot be empty',
        'order_does_not_exist' => 'Order does not exist',
        'order_is_expired' => 'Order has expired, please place a new order',
        'order_already_paid' => 'The order has already been paid, please do not pay again',
        'order_status_completed' => 'The order has been processed',
        'order_inconsistent_amounts' => 'Inconsistent order amount',
        'order_ip_limits' => 'You have too many orders to pay, please pay first; or take a break.',
        'order_carmis_insufficient_quantity_available' => 'Insufficient available card quantity, please contact the administrator to verify',
        'pay_gateway_does_not_exist' => 'Payment gateway does not exist',
        'pay_gateway_does_not_match' => 'Please use the same payment method as when placing the order',
        'abnormal_payment_channel' => 'Payment gateway exception!',
        'payment_successful' => 'Payment successful!',
        'copy_text_success' => 'Copy successful',
        'copy_text_failed' => 'Copy failed',
        'search_order_browser_tips' => 'You can only query up to 5 recent orders',
        'no_related_order_found_for_cache' => 'No related order cache found!',
        'no_related_order_found' => 'No related order found!',
        'new_order_push' => 'New order notification',
        'loop_carmis_limit' => 'This product can only be purchased once!',
        'payment_limit' => 'This payment method is not supported for the selected product!',
        'preselect_unable' => 'The preselected card has expired, please place a new order.',
        'payment_only_once' => 'This payment method only allows a single payment page to be opened, please place a new order.'
    ],

    'equipment' => [
        'please_use_a_browser_to_open' => 'Please use the built-in browser to open',
        'does_not_support_wechat_or_qq_access' => 'This site does not support access via WeChat or QQ',
        'please_follow_the_prompts_to_open' => 'Please follow the prompts to open in your mobile browser',
        'open_browser_tips' => 'Click on the "..." icon on the top right or copy the URL to open it in your browser',
        'apple_device' => 'Apple device',
        'android_device' => 'Android device',
        'click_on_the_upper_right_corner' => 'Click on the top right corner',
        'open_the_browser' => 'to open the browser',
        'what_do_you_need_today' => 'What do you need today?',
        'self_promotion' => 'Quality products and excellent customer service represent a perfect transaction process.',
    ],

    'page-title' => [
        'home' => 'Home',
        'bill' => 'Order Confirmation',
        'order-detail' => 'Order Details',
        'order-search' => 'Order Search',
        'article' => 'The Article',
    ]
];
