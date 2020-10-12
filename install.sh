#!/bin/bash -e
# 参考にしたページ：dotfilesの育て方
# https://qiita.com/reireias/items/b33b5c824a56dc89e1f7

IGNORE_PATTERN="^\.(git|travis)"

echo "Create dotfile links."
for dotfile in .??*; do
        [[ $dotfile =~ $IGNORE_PATTERN ]] && continue
            ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
        done
        echo "Success" ]]

# Deinのインストール
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.local/installer.sh

sh ~/.local/installer.sh

rm ~/.local/installer.sh
