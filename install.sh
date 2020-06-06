#!/bin/bash
sudo apt -y install zsh
#使用国内github repo加速
#export REMOTE=https://gitlab.abcxlab.com/github/ohmyzsh.git 
sh -c "$(curl -fsSL https://gitlab.abcxlab.com/github/ohmyzsh/-/raw/master/tools/install.sh)"
#基于默认主题，客制my主题
cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/myrobbyrussell.zsh-theme
echo 'PROMPT="%{$fg_bold[green]%}%n@%M %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"' >> ~/.oh-my-zsh/themes/myrobbyrussell.zsh-theme
echo "PROMPT+='%{\$fg[cyan]%}%c%{\$reset_color%} \$(git_prompt_info)'" >> ~/.oh-my-zsh/themes/myrobbyrussell.zsh-theme
sed -i 's/robbyrussell/myrobbyrussell/g' ~/.zshrc
source ~/.zshrc

