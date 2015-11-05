# if running bash
if [ -n "$BASH_VERSION" ] ; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ] ; then
      . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# rbenv
if [ -d "$HOME/.rbenv/bin" ] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# bash git prompt
if [ -f "$HOME/bash-git-prompt/gitprompt.sh" ] ; then
  GIT_PROMPT_END="\n\u $ "
  source "$HOME/bash-git-prompt/gitprompt.sh"
fi
