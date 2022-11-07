# Консольные утилиты

## Базовый набор пакетов

## Zshell

```bash
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Можно поставить какую-нибудь [тему](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes), мне нравится `eastwood`

```bash 
omz theme set eastwood
```


# ffmpeg

## Сменить формат

```ffmpeg -i input.mkv -codec copy output.mp4```

