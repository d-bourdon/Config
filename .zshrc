# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dbourdon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/07 12:10:20 by dbourdon          #+#    #+#              #
#    Updated: 2016/01/07 13:02:26 by dbourdon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# On load les differents modules
autoload -U colors && colors  
autoload -U compinit && compinit

# On modifie l'affichage pour chaque lignes; permet d'avoir le nom user, le nom machine et le fichier courant
# puis un retour a la ligne avec >.
PROMPT="$fg_bold[cyan]%n@$reset_color$fg[green]%m$reset_color$fg_bold[yellow] %~$reset_color
> "

# On met a doite l'heure, c'est toujours pratique
RPROMPT="%T" 

# Une liste d'alias console
alias ga='git add'
alias gst='git status'
alias gc='git commit'
alias gp='git push'

# Alias pour save rapide : Ce sont des alias global, utilisable aussi en console ex: cd PATH_SAVE
# 							PATH_SAVE -> dossier du travail save
# 							PATH_GIT_SAVE -> dossier du git ou est save le tout est save
alias -g PATH_SAVE='~/libft-/*' PATH_GIT_SAVE='~/git-save/s-libft/'

# Commande pour la save rapide. a la fin de la commande vous vous retrouvez dans PATH_GIT_SAVE
# copie en force le contenue du dossier recurssivement, ce deplace dans le dossier git, git add, git commit avec le message save et git push
alias save='cp -fr PATH_SAVE PATH_GIT_SAVE ; cd PATH_GIT_SAVE ; ga *; gc -m "Save"; gp'
