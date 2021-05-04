# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jovian/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#HELPER
alias editZsh="vim ~/.zshrc"
alias sourceZsh="source ~/.zshrc"
alias pushDotfiles="cd ~/.my_dot_files && git add . \
    && git commit -m 'Update Dotfiles' && git push origin "

#Hybrid Graphics
## GLX Applications : __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia <application>
## Vulcan : __NV_PRIME_RENDER_OFFLOAD=1 <application>

# alias gazebo="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia gazebo"
# alias gzserver="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia gzserver"
# alias gzclient="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia gzclient"

#Gazebo
source /usr/share/gazebo/setup.sh

#ROS2
source /opt/ros/foxy/setup.zsh
alias turtlebot3_ws="source ~/ros2/turtlebot3_ws/install/setup.zsh"
alias amazon_ws="source /home/jovian/ros2/amazon_ws/install/setup.zsh"

#Docker container Alias
alias amazon_warehouse_single="xhost + && docker start -i amazon_warehouse_single"
alias amazon_warehouse_multiple="xhost + && docker start -i amazon_warehouse_multi"
alias amazon_warehouse_slam="xhost +  && docker start -i amazon_warehouse_slam"
#ADE Alias
alias adehome="cd ~/docker/adehome"
alias editFoxy="code ~/docker/adehome/AutowareAuto/tools/my_ade_image/Dockerfile"
alias buildFoxy="cd ~/docker/adehome/AutowareAuto/tools/my_ade_image/ && ./build.sh && cd -"
alias foxy="ade --rc ~/docker/adehome/AutowareAuto/.aderc-my-foxy  start --enter && ade stop"

#Turtlebot3
export GAZEBO_MODEL_PATH=~/ros2/turtlebot3_ws/src/turtlebot3/turtlebot3_simulations/turtlebot3_gazebo/models:$GAZEBO_MODEL_PATH
export TURTLEBOT3_MODEL=waffle

## Amazon warehouse and robot models
export GAZEBO_MODEL_PATH=/home/jovian/ros2/amazon_ws/src/amazon_robot/aws-robomaker-small-warehouse-world/models:$GAZEBO_MODEL_PATH
export GAZEBO_MODEL_PATH=/home/jovian/ros2/amazon_ws/src/amazon_robot/amazon_robot_gazebo/models:$GAZEBO_MODEL_PATH

# Robotics Academy
alias docker_academy="docker run -it --rm -p 8080:8080 -p 7681:7681 -p 2303:2303 -p 1905:1905 -p 8765:8765 -p 6080:6080 -p 1108:1108 docker_academy:latest python3.8 manager.py"

alias docker_exec="docker exec -it $(docker ps -q) /bin/bash"
