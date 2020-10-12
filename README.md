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
pip3 --no-cache-dir install -I neovim
```

初回Vim起動時に下記を実行する。
```
:call dein#install()
```
