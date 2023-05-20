FROM webdevops/php-nginx:8.0
COPY . /app
WORKDIR /app
RUN [ "sh", "-c", "composer install --ignore-platform-reqs" ]
RUN [ "sh", "-c", "chmod -R 777 /app" ]
RUN [ "sh", "-c", "php artisan key:generate" ]

# 基础镜像
FROM dnmp-php80
ARG LARAVEL_PATH=/data/www/dujiaoka

# 拷贝代码到工作区（.表示我在当前项目目录下）
COPY . ${LARAVEL_PATH}

#执行相关操作
RUN cd ${LARAVEL_PATH} \
    && sh -c chmod -R 777 /app \
    && sh -c php artisan key:generate \
    && sh -c php artisan storage:link \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    && composer install \
        --ignore-platform-reqs \
    && cp env.sample .env \
