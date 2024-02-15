# 家計簿

/usr/app 配下にアプリケーションを配置

podman pod create --name householdAccount -p 8080:80 --replace

podman run -it --rm -v ./nginx/nginx.conf:/etc/nginx/nginx.conf:ro --name householdAccountNginx --pod householdAccount nginx

podman run -it --rm --pod householdAccount --name flask_with_uwsgi flask_with_uwsgi:latest

