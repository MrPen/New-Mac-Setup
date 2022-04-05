# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Add task description!
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/slewandowski/.poetry/bin/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/slewandowski/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # Official plugins
    ansible
    aws
    brew
    docker
    git-auto-fetch
    git
    kubectl
    poetry
    pyenv
    terraform
    zsh-autosuggestions
    zsh-interactive-cd
  # Custom plugins
    autoswitch_virtualenv
  )

source $ZSH/oh-my-zsh.sh

# User configuration

DEFAULT_USER=$(whoami)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Bash scripts
alias ad="/Users/slewandowski/scripts/ad.sh"
alias getCert="/Users/slewandowski/scripts/getCert.sh"
alias aws.setProfile="source ~/scripts/awsSetProfile"

# Python scripts
## Gitlab
alias git.FindRepoURL="python3 /Users/slewandowski/git/private/Python-Scripts/gitlab/find-repo-url/find_repo_url.py"
alias git.CreateSnippet="python3 /Users/slewandowski/git/private/Python-Scripts/gitlab/create-snippet/create_snippet.py"
alias git.ChangeUserMail="python3 /Users/slewandowski/git/private/Python-Scripts/gitlab/change-user-mail/change_user_mail.py"

## Jira
alias jira.CreateTask="python3 /Users/slewandowski/git/private/Python-Scripts/jira/create-task/create_task.py"
alias jira.GetAssignToMe="python3 /Users/slewandowski/git/private/Python-Scripts/jira/get-assign-to-me/get_assign_to_me.py"
alias jira.GetWorkLog="python3 /Users/slewandowski/git/private/Python-Scripts/jira/get-work-log/get_work_log.py"
alias jira.GetWorkLogTime="python3 /Users/slewandowski/git/private/Python-Scripts/jira/get-work-log-time/get_work_log_time.py"
alias jira.TaskOverviewReport="python3 /Users/slewandowski/git/ict/python/jira_scripts/ict-task-overview-report/main.py"

## Haproxy
alias haproxy.CanaryWeightCalculator="python3 /Users/slewandowski/git/private/Python-Scripts/haproxy/haproxy-canary/haproxy_canary.py"

## Tools
alias tools.RPTree="python3 /Users/slewandowski/git/ict/python/tools/rptree/tree.py"
alias tools.sslCertValidator="python3 /Users/slewandowski/git/private/ssl-cert-validation/main.py"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.poetry/bin:$PATH"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
export PATH="/usr/local/opt/openssl@3/bin:$PATH"