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

# aptを通すためにbashrcだけでなく/etc/environmentにもproxy設定を書いておく
if [ $NAME = "SLRC1843" ]; then
    echo http_proxy="http://199.19.250.205:80" >> /etc/environment
    echo https_proxy="http://199.19.250.205:80" >> /etc/environment
fi
