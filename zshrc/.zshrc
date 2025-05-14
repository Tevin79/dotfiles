alias facout="ssh -p 86 twincent@193.55.143.100"
alias facin="ssh twincent@10.16.21.1"
#alias asr2="cd ~/Desktop/L2/ASR2/tp/"
alias progc="cd ~/Desktop/L2/Prog\ C/"
#alias tl="cd ~/Desktop/L2/Théorie\ des\ langages/$1"
alias mygcc='gcc -g -Wall -Wextra -pedantic -std=c99'
alias myjavac='~/Documents/zulu21/bin/./javac'
alias myjava='~/Documents/zulu21/bin/./java'
alias ll='ls -la'
alias l='ls -la'

function asr(){
  cd ~/Desktop/L2/ASR2/$1;
}

function tl(){
  cd ~/Desktop/L2/Théorie\ des\ langages/$1;
}

eval "$(starship init zsh)"

eval $(opam env)

# Load Angular CLI autocompletion.
source <(ng completion script)>
