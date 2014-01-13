##環境設定
autoload -U compinit
autoload colors
compinit

##path
export LANG=ja_JP.UTF-8
export PATH=/opt/local/bin:/opt/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin$PATH
export MANPATH=/opt/local/man:$MANPATH
#WEKA
export CLASSPATH=/Applications/weka-3-6-4/weka.jar:$CLASSPATH
#export CLASSPATH=/Applications/weka-3-6-4/weka.classifiers.functions.LibSVM:$CLASSPATH

##options
setopt auto_cd
setopt auto_pushd
setopt correct
#ls
setopt list_packed
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
#pronpt
case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    PROMPT="%{[33m%}%/%%%{[m%} "
    PROMPT2="%{[33m%}%_%%%{[m%} "
    SPROMPT="%{[33m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

#履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#set alias
#alias javac="env LC_ALL=en javac"
alias em="emacs -nw"
alias cp="cp -i" 
alias mv="mv -i"
alias rm="rm -i"
alias hadoop="/usr/local/hadoop/bin/hadoop"
