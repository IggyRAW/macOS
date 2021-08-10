# README

## alfredのインストール
https://www.alfredapp.com

## itermのインストール
https://iterm2.com

### コマンドライン内
* homebrewのインストール
https://brew.sh/index_ja
> 2021/2/20時点ではパス通す必要とかあったよ

* Node.jsのインストール(coc.nvimのため)
`anyenv install nodenv`
`nodenv install *version*`
`nodenv rehash`
`nodenv global *version*`


* dotfileの取得
```
git clone https://github.com/TOGEP/Dotfiles.git
```

* vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
  * vim-plugプラグインインストール
```
:PlugInstall
```

  * vimのチェック
```
:checkhealth 
```
