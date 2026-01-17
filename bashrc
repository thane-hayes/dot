kcd() { (mkdir -p "$1" && cd "$1" && shift && kiro-cli chat --resume-picker "$@"); }
alias kc="kcd ."
alias kct="kcd /tmp"
alias vi=nvim
alias tm="tmux"
tw() { cd $1 && tmux new-window -n $1; }
tn() { unset TMUX; tmux new; }
twn() { tmux new-window -n $1; }

