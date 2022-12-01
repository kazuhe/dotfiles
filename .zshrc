###############
# シェル設定
###############

# Znap(https://github.com/marlonrichert/zsh-snap) がダウンロードされていない場合はダウンロードする
[[ -f ~/znap/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/znap/zsh-snap

source ~/znap/zsh-snap/znap.zsh

# プロンプトに pure(https://github.com/sindresorhus/pure) を利用する
znap prompt sindresorhus/pure

# `znap source` で利用したいプラグインを自動的にダウンロードする
znap source marlonrichert/zsh-autocomplete # https://github.com/marlonrichert/zsh-autocomplete

# よく分からんけどいい感じに非同期実行っぽいことをしてれくれるらしい
znap function _pyenv pyenv 'eval "$( pyenv init - --no-rehash )"'
compctl -K _pyenv pyenv

###############
# ソース管理
###############

# '^' + ']' キーで ghq で管理しているリポジトリ一覧をリストアップする
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src
