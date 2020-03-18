# Docker machine prompt

The plugin displays the name of current docker machine (if not default).
The plugin has been tested only with [oh-my-zsh](https://ohmyz.sh/) and [p10k](https://github.com/romkatv/powerlevel10k)

To use it: 

- clone repo to your plugin directory
```
git clone https://github.com/pomarec/docker-machine-prompt-p10k.git $ZSH/custom/plugins/
```
- add `docker-machine-prompt-p10k` to the plugins array of your zshrc file:
```
plugins=(... docker-machine-prompt-p10k)
```
- add `docker-machine` to the `POWERLEVEL9K_LEFT_PROMPT_ELEMENTS` or `POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS` array of your p10k.zsh file:
```
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    # =========================[ Line #1 ]=========================
    os_icon                 # os identifier
    dir                     # current directory
    vcs                     # git status
    docker-machine          # current docker machine
    # =========================[ Line #2 ]=========================
    newline                 # \n
    prompt_char             # prompt symbol
  )
```