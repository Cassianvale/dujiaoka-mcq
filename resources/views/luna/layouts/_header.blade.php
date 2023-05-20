<head>
    <meta charset="UTF-8">
    <!-- 不缓存 -->
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>{{ isset($page_title) ? $page_title : '' }} | {{ dujiaoka_config_get('title') }}</title>
    <meta name="Keywords" content="{{ dujiaoka_config_get('keywords') }}">
    <meta name="Description" content="{{ dujiaoka_config_get('description')  }}">
    <link rel="stylesheet" href="/assets/luna/layui/css/layui.css">
    <link rel="stylesheet" href="/assets/luna/main.css">
    <link rel="shortcut icon" href="/assets/style/favicon.ico" />
    <!--自动将所有使用HTTP协议的资源请求升级为HTTPS协议-->
    @if(\request()->getScheme() == "https")
        <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    @endif
</head>
@if(dujiaoka_config_get('is_open_google_translate') == \App\Models\BaseModel::STATUS_OPEN)
@include('luna.layouts.google_translate')
@endif
