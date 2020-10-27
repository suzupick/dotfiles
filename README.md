# インストール
## ドットファイルの有効化
ドットファイルをダウンロードし、シンボリックリンクを作成する。
```
cd $HOME
git clone https://github.com/suzupick/dotfiles
sh ./dotfiles/install.sh
```

## Vimの設定
NeoVimをインストールする。参考：https://blog.fakiyer.com/entry/2018/11/20/101826
```
sudo apt update
sudo apt install python3-pip
pip3 --no-cache-dir install -I neovim
```

deopleteはVim8.1以上が必要。Ubuntu18.04のディストリビューション利用時など、aptのVimのバージョンが8.0以下の場合は
下記の要領でVim8.1以上のものをインストール。
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

初回Vim起動時に下記を実行する。
```
:call dein#install()
```
