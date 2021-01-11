set fish_greeting ""
set fish_features qmark-noglob

set -x BAT_THEME OneHalfLight
set -x DIFF colordiff
set -x FZF_DEFAULT_COMMAND 'ag --hidden -g ""'
set -x FZF_DEFAULT_OPTS '--color light'
set -x GOPATH $HOME/go
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x LESS "--RAW-CONTROL-CHARS --no-init --quit-if-one-screen"
set -x PIPENV_DONT_LOAD_ENV 1
set -x SHELL (which fish)
set -x VISUAL vim

function addpaths
  contains -- $argv $fish_user_paths
    or set -U fish_user_paths $argv $fish_user_paths
end

addpaths $GOPATH/bin
#addpaths /usr/local/opt/ruby/bin:$PATH:$HOME/.local/bin
addpaths $HOME/.asdf/bin
addpaths $HOME/.asdf/shims
addpaths $HOME/.bin
addpaths $HOME/.fzf/bin
addpaths .git/safe/../../bin
addpaths /usr/local/sbin
addpaths ~/.rbenv/shims

abbr --add g git
abbr --add v $VISUAL
abbr --add pm "pipenv run python manage.py"

alias ag "ag --pager less --color-line-number '1;34'"
alias down "bundle exec rake db:migrate:down VERSION=20200818232533"
alias migrate "bundle exec rake db:migrate"
alias hgrep "history|grep"
alias headphones "SwitchAudioSource -t output -s 'Logicool G430 Gaming Headset' && SwitchAudioSource -t input -s 'Logicool G430 Gaming Headset'"
alias speakers "SwitchAudioSource -t output -s 'External Headphones' && SwitchAudioSource -t input -s 'MacBook Pro Microphone'"
alias fixmonitors2 "displayplacer 'id:BCC50B5E-306D-5350-1AA3-0054F8D83671 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0' 'id:C64F35CA-F86D-0804-B031-448F37C588E3 res:1080x1920 hz:60 color_depth:8 scaling:off origin:(1920,-443) degree:270'"
alias monitors720 'displayplacer "id:372D5B5D-5A62-D2C5-0CFC-01A730C6101B res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:57FD5D41-3CC5-B1FA-1D5D-ADBB1480AA1E res:1680x1050 color_depth:4 scaling:on origin:(-1680,436) degree:0" "id:F12F9468-0F95-B777-A026-201B37C7C90B res:1280x720 hz:60 color_depth:8 scaling:off origin:(1920,0) degree:0"'
alias docraptor "heroku addons:open docraptor -a prime-trust-api-staging"

alias add "git add ."
alias amend "git commit --amend --no-edit"
#alias badcop "git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop -a"
alias commit "git commit -m"
alias force "git push --force"
alias goodcop "bundle exec rubocop --parallel"
alias heroku-sandbox "heroku run rake console -a prime-trust-api-sandbox"
alias heroku-staging "heroku run rake console -a prime-trust-api-staging"
alias pull "git pull"
alias push "git push"
alias reset "env RACK_ENV=test bundle exec rake db:reset && env RACK_ENV=test bundle exec rake db:seed"
#alias status "git status"
alias spec "bundle exec rake spec"
alias vpn "sudo openfortivpn -c ~/.pt-vpn-config"

status --is-interactive; and source (rbenv init -|psub)

