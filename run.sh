# 

# create pod
podman pod create --name householdAccount \
                  -p 8080:80 \
                  --replace

# start container
podman run -d \
           -v ./nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
           --name householdAccountNginx \
           --pod householdAccount \
           nginx
# :ro is read only access 
