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

環境固有のスプリプトがあれば、`.zsh/.env.zsh` を作成し記述する。

その後インストーラーを実行する。

```sh
./bin/install_dots.sh
```

`.zshrc` の再読み込をして `Brewfile` ファイルを元にライブラリをインストールする。

```sh
source ~/.zshrc
brew bundle
```
