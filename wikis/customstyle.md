## 自定义后台颜色
1. 下载nodejs,配置nodejs环境
```
vim /etc/profile
export NODE_HOME=/www/server/nodejs/v16.8.0/  //Node所在路径
export PATH=$NODE_HOME/bin:$PATH
source /etc/profile
```

2. 根目录执行:
`php artisan admin:minify mypink --color ff99ce --publish`

3. 在`app/Admin/bootstrap.php` 目录添加以下代码
```
Dcat\Admin\Color::extend('mypink', [
    'primary'        => '#ff99ce',
    'primary-darker' => '#ff99ce',
    'link'           => '#ff99ce',
]);
```

4. 在`config/admin.php` 文件中 `admin=>layout=>color` 参数配置为mypink
    'layout' => [
        // default, blue, blue-light, green
        'color' => 'mypink',
		......
    ],
5. 每次版本更新，都需要重新编译一次自定义主题