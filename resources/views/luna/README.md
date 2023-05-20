## 独角数卡 - Luna模板

一套简洁的独角数卡模板

## 特殊用法

#### 商品的其他输入框配置可以配置为下拉选项卡

``` 
使用方法:只需在输入框名字后面跟上选项即可 使用 | 分割选项
例子：
service=所在区服[1号服务器|2号服务器|3号服务器]=true
```

## 背景图

#### 设计能力有限，觉得背景图不好看的，可自行更换（建议尺寸：1920px*1224px）

背景图文件位置

```
你的部署路径/public/assets/luna/img/background.png
```

#### 也可去掉背景图 屏蔽_nav.blade.php中的一个div即可 

_nav.blade.php位置

```
你的部署路径/resources/views/luna/layouts/_nav.blade.php
```

```
/*屏蔽掉文件第一行的div标签即可去掉背景图。例：*/
{{--<div class="background"></div>--}}
```

## 作者信息
[Julyssn](https://github.com/Julyssn) 七月 QQ：77322509
[发卡网](https://faka.win) TG: [@发卡网](https://t.me/super_faka_bot) 增加luna移动端公告、增加公告边框、为支付跳转按钮与支付二维码之间增加间距
