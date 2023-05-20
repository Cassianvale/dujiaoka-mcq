## 安装

先看完原版的教程再看下面的 - [2.x版本宝塔安装教程](https://github.com/assimon/dujiaoka/wiki/2.x_bt_install)
1. 如果根目录有composer.lock则删除，根目录执行`composer install`安装依赖
2. 执行`php artisan key:generate`生成APP_KEY
3. 执行`php artisan storage:link`生成符号链接，目的是通过 URL 访问存储在 `storage/app/public` 目录中的文件
