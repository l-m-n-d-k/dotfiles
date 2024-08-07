#!/bin/bash

# Обновление системы и установка пакетов
sudo pacman -Syu

sudo pacman -S git github-cli firefox telegram-desktop btop fish neovim tmux openssh ncdu sxiv zathura bat discord xclip

# Изменение оболочки на fish
chsh -s /usr/bin/fish

# Создание SSH ключа для GitHub
# ssh-keygen -t ed25519 -C "l-m-n-d-k@GitHub" -f ~/.ssh/github_id_ed25519 -N ""

# Установка yay для работы с AUR
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# cd ..
# rm -rf yay

echo "Установка и настройка завершены!"
