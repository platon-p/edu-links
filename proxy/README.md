# Делаем свой прокси сервер

### Устанавливаем **3proxy**

```bash
wget --no-check-certificate https://raw.github.com/SnoyIatk/3proxy/master/3proxyinstall.sh
chmod +x 3proxyinstall.sh
./3proxyinstall.sh
```

### Настравиваем пользователей для входа

```bash
USERNAME:CL:PASSWORD
```

### Подключение

В итоге мы можем подключиться к прокси по адресу `username:password@ip:9999`. Тип прокси - http(s)
