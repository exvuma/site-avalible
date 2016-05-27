server {
        listen 80;
        listen [::]:80;

        root /var/www/pointzerograppling.com/html;
        index index.html index.htm ; #index.nginx-debian.html;

        server_name pointzerograppling.com;  #www.test.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
