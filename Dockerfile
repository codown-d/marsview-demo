# 使用 Nginx 官方镜像
FROM nginx:latest

# 将本地目录中的文件复制到容器内的指定路径
# 假设你希望将本地的 /path/to/your/site 目录中的内容复制到容器中的 /usr/share/nginx/html
COPY ./lowCode /usr/share/nginx/html/lowCode

# 将本地自定义的 nginx 配置文件复制到容器的 nginx 配置目录
COPY nginx.conf /etc/nginx/nginx.conf

# 暴露 Nginx 默认的 80 端口
EXPOSE 9200 9201

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
