ZSH_DIR="${HOME}/.zsh"

# .zsh がディレクトリで、読み取り・実行が可能なとき
if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
  for file in ${ZSH_DIR}/**/*.zsh; do
    # 読み取り可能なら実行する
    [ -r $file ] && source $file
  done
fi
