# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dbourdon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/07 12:10:20 by dbourdon          #+#    #+#              #
#    Updated: 2016/01/07 12:45:26 by dbourdon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

autoload -U colors && colors  
autoload -U compinit && compinit

PROMPT="$fg_bold[cyan]%n@$reset_color$fg[green]%m$reset_color$fg_bold[yellow] %~$reset_color
> "

RPROMPT="%T" 

alias ga='git add'
alias gst='git status'
alias gc='git commit'
alias gp='git push'
alias -g PATH_SAVE='~/libft-/*' PATH_GIT_SAVE='~/git-save/s-libft/'
alias save='cp -f PATH_SAVE PATH_GIT_SAVE ; cd PATH_GIT_SAVE ; ga *; gc -m "Save"; gp'
