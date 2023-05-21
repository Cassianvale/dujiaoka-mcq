# 基础镜像
FROM webdevops/php-nginx:8.0
ARG LARAVEL_PATH=/www/wwwroot/dujiaoka

# 拷贝代码到工作区（.表示我在当前项目目录下）
COPY . ${LARAVEL_PATH}
#执行相关操作
RUN cd ${LARAVEL_PATH} \
    && sh -c chmod -R 777 /app \
    && sh -c php artisan key:generate \
    && sh -c php artisan storage:link \
    && composer install \
        --ignore-platform-reqs \
    && cp .env.sample .env \
