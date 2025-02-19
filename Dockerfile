# 选择 PHP 版本
FROM php:8.1-apache

# 设置工作目录
WORKDIR /var/www/html

# 复制项目文件到容器中
COPY . /var/www/html/

# 启用 Apache rewrite 模块（如果用 .htaccess）
RUN a2enmod rewrite

# 设定端口
EXPOSE 80

# 运行 Apache 服务器
CMD ["apache2-foreground"]
