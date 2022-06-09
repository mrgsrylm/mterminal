#!/usr/bin/env zsh

THEME_ZSH_FILE=https://raw.githubusercontent.com/gusrylmubarok/gusrylmubarok-zsh-theme/main/gusrylmubarok.zsh-theme
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

function fetch_file {
  local file_url="$1"
  local dest_dir="$2"
  local file_name=${file_url##*/}
  mkdir -p $dest_dir
  curl -fsSL "$file_url" > $dest_dir/$file_name
}

function set_theme {
  sed -i.bak -e "s/^ZSH_THEME=[\"']\{0,1\}[A-Za-z0-9\._-]*[\"']\{0,1\}/ZSH_THEME=\"$1\"/1" $HOME/.zshrc
}

echo "Installing ..."

fetch_file $THEME_ZSH_FILE $ZSH_CUSTOM/themes
set_theme gusrylmubarok

printf "$GREEN"
echo "Hi folk, Welcome to use gusrylmubarok theme. 🛠 "
printf "$RESET"

env zsh -l