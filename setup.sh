#!/bin/bash

# Обновление системы и установка пакетов
sudo pacman -Syu

sudo pacman -S git firefox telegram-desktop btop fish neovim tmux openssh ncdu sxiv zathura bat discord 

# Изменение оболочки на fish
chsh -s /usr/bin/fish

# Создание SSH ключа для GitHub
ssh-keygen -t ed25519 -C "dima2642007@gmail.com" -f ~/.ssh/github_id_ed25519 -N ""
echo "SSH ключ для GitHub создан. Скопируйте следующий ключ и добавьте его в ваш GitHub аккаунт:"
cat ~/.ssh/github_id_ed25519.pub

# Установка yay для работы с AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

echo "Установка и настройка завершены!"
