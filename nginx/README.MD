# Nginx

## Шаблон

```conf
server {
    # Serve request for this (sub)domain
    server_name subdomain.domain.com;

    # CORS
    add_header 'Access-Control-Allow-Origin' '*';

    # Serve files in this directory
    root /var/www/html;
    # domain.com/index.html == domain.com/
    index index.html;

    location / {
        # serve files in root by url and return 404 code if not found
        try_files $uri $uri\= 404;

        # proxy request to another host
        proxy_pass http://localhost:5555;
    }

    ... other locations
}

```

## Конфигурирование nginx серверов

Советую выность каждый сервер (домен/ip) в отдельный файл (директория /etc/nginx/sites-enabled/)

## Перезагрузка nginx

```
sudo nginx -s reload`
```

## Перенаправление запросов

```
proxy_pass http://localhost:port;
# proxy_pass https://domain.com
```

## Раздавать файлы

```
# root директория
root var/www/html/;
index index.html;

try_files $uri $uri\= 404;
```

## CrossOrigin

```
add_header 'Access-Control-Allow-Origin' '*';

# иногда может понадобиться
add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
```
