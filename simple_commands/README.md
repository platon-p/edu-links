# Простые команды

### Поиск словосочетания по текущей директории, включая вложенные

```bash
grep -r 'PHRASE' .
```

Можно для удобства отправить это в bat (или less)

```bash
grep -r 'PHRASE' . | bat
```

### Распаковка tar.gz архива

```bash
tar -xzf archive.tar.gz
```

### Открытие туннеля (инфа идет с локалки)

По-хорошему включить на удаленном сервере этот порт

```bash
ssh -R REMOTE_PORT:localhost:LOCAL_PORT server_alias
```

### Включение порта (может помочь если что то не работает)

```bash
sudo iptables -I INPUT -p tcp -m tcp --dport PORT -j ACCEPT
```

### Просмотр процесса, который использует некий порт

```bash
sudo ss -lptn 'sport = :PORT'
```

### Убить процесс

```bash
pkill PROCESS_ID
```

### Бан ip-адреса при ssh подключении

После того как мы узнали IPшник, можем прописать следующее

```bash
echo 'ssd: IP' >> /etc/hosts.deny
```
