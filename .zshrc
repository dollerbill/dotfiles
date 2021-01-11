# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/billy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/.zplug/init.zsh
zplug "wookayin/anybar-zsh"
zplug load --verbose

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ohmyzsh="source ~/.zshrc"
alias zshcolor="getColorCode background"
alias hgrep="history|grep"
alias vpn="sudo openfortivpn -c ~/.pt-vpn-config"
alias headphones="SwitchAudioSource -t output -s 'Logicool G430 Gaming Headset' && SwitchAudioSource -t input -s 'Logicool G430 Gaming Headset'"
alias speakers="SwitchAudioSource -t output -s 'External Headphones' && SwitchAudioSource -t input -s 'MacBook Pro Microphone'"
alias fixmonitors="displayplacer 'id:BCC50B5E-306D-5350-1AA3-0054F8D83671 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0' 'id:57FD5D41-3CC5-B1FA-1D5D-ADBB1480AA1E res:1680x1050 color_depth:4 scaling:on origin:(-1680,609) degree:0' 'id:C64F35CA-F86D-0804-B031-448F37C588E3 res:1080x1920 hz:60 color_depth:8 scaling:off origin:(1920,-278) degree:270'"
alias fixmonitors2="displayplacer 'id:BCC50B5E-306D-5350-1AA3-0054F8D83671 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0' 'id:C64F35CA-F86D-0804-B031-448F37C588E3 res:1080x1920 hz:60 color_depth:8 scaling:off origin:(1920,-443) degree:270'"
alias monitors720='displayplacer "id:372D5B5D-5A62-D2C5-0CFC-01A730C6101B res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:57FD5D41-3CC5-B1FA-1D5D-ADBB1480AA1E res:1680x1050 color_depth:4 scaling:on origin:(-1680,436) degree:0" "id:F12F9468-0F95-B777-A026-201B37C7C90B res:1280x720 hz:60 color_depth:8 scaling:off origin:(1920,0) degree:0"'
alias docraptor="heroku addons:open docraptor -a prime-trust-api-staging"
alias dkrps="docker ps"
alias dkrcup="docker-compose up -d"
alias dkrdwn="docker-compose down"
alias down="bundle exec rake db:migrate:down VERSION=20200601190126"
alias heroku-sandbox="heroku run rake console -a prime-trust-api-sandbox"
alias heroku-staging="heroku run rake console -a prime-trust-api-staging"
alias pull="git pull"
alias push="git push"
alias commit="git commit -m"
alias amend="git commit --amend --no-edit"
alias force="git push --force"
alias add="git add ."
alias status="git status"
# alias seed="bundle exec rake db:seed"
# alias migrate="bundle exec rake db:migrate"
alias spec="bundle exec rake spec"
alias goodcop="bundle exec rubocop --parallel"
alias badcop="git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop -a"
alias reset="env RACK_ENV=test bundle exec rake db:reset && env RACK_ENV=test bundle exec rake db:seed"
# alias awssh="ssh -v -i ~/.ssh/engineyard -N -L 14330:10.33.123.161:1433 deploy@ec2-52-204-150-141.compute-1.amazonaws.com"
# alias foreman="bundle exec foreman start 'redis=1,ssh-tunnel=1'"
#alias stackup="bash bin/run_servers -a"
#alias dkrstk="docker-compose up db adminer"
#alias symcache="php bin/console cache:clear"
#alias schemaupdate="php bin/console doctrine:schema:update"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

POWERLEVEL9K_MODE='nerdfont-complete'
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# Please only use this battery segment if you have material icons in your nerd font (or font)
# Otherwise, use the font awesome one in "User Segments"
prompt_zsh_battery_level() {
local percentage1=`pmset -g ps  |  sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'`
local percentage=`echo "${percentage1//\%}"`
local color='%F{red}'
local symbol="\uf00d"
pmset -g ps | grep "discharging" > /dev/null
if [ $? -eq 0 ]; then
local charging="false";
else
local charging="true";
fi
if [ $percentage -le 20 ]
then symbol='\uf579' ; color='%F{red}' ;
#10%
elif [ $percentage -gt 19 ] && [ $percentage -le 30 ]
then symbol="\uf57a" ; color='%F{red}' ;
#20%
elif [ $percentage -gt 29 ] && [ $percentage -le 40 ]
then symbol="\uf57b" ; color='%F{yellow}' ;
#35%
elif [ $percentage -gt 39 ] && [ $percentage -le 50 ]
then symbol="\uf57c" ; color='%F{yellow}' ;
#45%
elif [ $percentage -gt 49 ] && [ $percentage -le 60 ]
then symbol="\uf57d" ; color='%F{blue}' ;
#55%
elif [ $percentage -gt 59 ] && [ $percentage -le 70 ]
then symbol="\uf57e" ; color='%F{blue}' ;
#65%
elif [ $percentage -gt 69 ] && [ $percentage -le 80 ]
then symbol="\uf57f" ; color='%F{blue}' ;
#75%
elif [ $percentage -gt 79 ] && [ $percentage -le 90 ]
then symbol="\uf580" ; color='%F{blue}' ;
#85%
elif [ $percentage -gt 89 ] && [ $percentage -le 99 ]
then symbol="\uf581" ; color='%F{blue}' ;
#85%
elif [ $percentage -gt 98 ]
then symbol="\uf578" ; color='%F{green}' ;
#100%
fi
if [ $charging = "true" ];
then color='%F{green}'; if [ $percentage -gt 98 ]; then symbol='\uf584'; fi
fi
echo -n "%{$color%}$symbol" ;
}
zsh_internet_signal(){
local color
local symbol="\uf7ba"
if ifconfig en0 | grep inactive &> /dev/null; then
color="%F{red}"
else
color="%F{blue}"
fi
echo -n "%{$color%}$symbol "
}
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_TIME_BACKGROUND="grey78"
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M}"
POWERLEVEL9K_DATE_BACKGROUND="white"
POWERLEVEL9K_DATE_FOREGROUND="black"
POWERLEVEL9K_DATE_FORMAT="%W"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='orange1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='deepskyblue3'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='deepskyblue1'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f"
POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND="blueviolet"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_internet_signal custom_battery_status_joined ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status time date)
HIST_STAMPS="dd.mm.yyyy"
DISABLE_UPDATE_PROMPT=true

neofetch -s

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# devstats

export PATH="/usr/local/opt/ruby/bin:$PATH:$HOME/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
