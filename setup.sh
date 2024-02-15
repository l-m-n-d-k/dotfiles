#!/bin/bash

# Обновление системы
sudo pacman -Syu

# Установка необходимых пакетов
sudo pacman -S --needed base-devel git wget yajl

# Установка yay для доступа к AUR
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si

# Установка утилит
sudo pacman -S fish neovim tmux openssh ncdu sxiv zathura git
yay -S btop # btop может быть доступен через AUR

# Установка GitHub CLI
sudo pacman -S gh

# Конфигурация fish как оболочки по умолчанию
chsh -s /usr/bin/fish

# Создание базовых конфигурационных файлов
mkdir -p ~/.config/fish
echo "set -gx EDITOR nvim" >> ~/.config/fish/config.fish
echo "alias ls='exa'" >> ~/.config/fish/config.fish
echo "alias top='btop'" >> ~/.config/fish/config.fish

mkdir -p ~/.config/nvim
echo "set number" >> ~/.config/nvim/init.vim # Пример настройки для nvim

echo "Установка и настройка завершены!"

