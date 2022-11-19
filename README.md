# dotfiles

## Setup

[Homebrew](https://brew.sh/) をインストールして仮でパスを通す。

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

[ghq](https://github.com/x-motemen/ghq) をインストールする。

```sh
brew install ghq
```

ghq のルートディレクトリを設定する。

```sh
git config --global ghq.root '~/src'
```

当リポジトリを `ghq get` する。

```sh
ghq get https://github.com/kazuhe/dotfiles
```

ディレクトリを移動してイントーラーを実行する。

```sh
./bin/install_dots.sh
```

`Brewfile` ファイルを元にライブラリをインストールする。

```sh
brew bundle
```
