BLUE="\e[34m"
CYAN="\e[36m"
GREEN="\e[32m"
DEFAULT="\e[0m"
will_configs_path="$HOME/.config/WilliamConfigs"
bashrc_path="$HOME/.bashrc"

niri_folder_path="$HOME/.config/niri"
nvim_folder_path="$HOME/.config/nvim"
kitty_folder_path="$HOME/.config/kitty"

task_data_path="$HOME/.task"
taskrc_path="$HOME/.taskrc"

space="echo -e \n"

function space {
    echo -e "\n"
}

space # NIRI config
if [[ -e $niri_folder_path ]]; then
    echo -e "found$GREEN niri$DEFAULT directory/file" &&
        rm -fr "$niri_folder_path" &&
        echo "original folder/file removed" &&
        ln -s "$will_configs_path"/niri "$niri_folder_path" &&
        echo -e "successfully created symlink $BLUE$niri_folder_path$DEFAULT -> $CYAN$will_configs_path/niri$DEFAULT"
else
    echo -e "niri$GREEN directory$DEFAULT isn't found"
    echo "creating..." &&
        ln -fs "$will_configs_path"/niri "$niri_folder_path" &&
        echo -e "successfully created symlink $BLUE$niri_folder_path$DEFAULT -> $CYAN$will_configs_path/niri$DEFAULT"
fi

space # NVIM config
if [[ -e $nvim_folder_path ]]; then
    echo -e "found$GREEN nvim$DEFAULT directory/file" &&
        rm -fr "$nvim_folder_path" &&
        echo "original folder/file removed" &&
        ln -s "$will_configs_path"/nvim "$nvim_folder_path" &&
        echo -e "successfully created symlink $BLUE$nvim_folder_path$DEFAULT -> $CYAN$will_configs_path/nvim$DEFAULT"
else
    echo -e "$GREEN nvim$DEFAULT directory isn't found"
    echo "creating..." &&
        ln -fs "$will_configs_path"/nvim "$nvim_folder_path" &&
        echo -e "successfully created symlink $BLUE$nvim_folder_path$DEFAULT -> $CYAN$will_configs_path/nvim$DEFAULT"
fi

space # KITTY config
if [[ -e $kitty_folder_path ]]; then
    echo -e "found$GREEN kity$DEFAULT directory/file" &&
        rm -fr "$kitty_folder_path" &&
        echo "original folder/file removed" &&
        ln -s "$will_configs_path"/kitty "$kitty_folder_path" &&
        echo -e "successfully created symlink $BLUE$kitty_folder_path$DEFAULT -> $CYAN$will_configs_path/kitty$DEFAULT"
else
    echo -e "$GREEN kitty$DEFAULT directory isn't found"
    echo "creating..." &&
        ln -fs "$will_configs_path"/kitty "$kitty_folder_path" &&
        echo -e "successfully created symlink $BLUE$kitty_folder_path$DEFAULT -> $CYAN$will_configs_path/kitty$DEFAULT"
fi

space # BASH config
if [[ -e $bashrc_path ]]; then
    echo -e "found$GREEN bash$DEFAULT directory/file" &&
        rm -fr "$bashrc_path" &&
        echo "original folder/file removed" &&
        ln -s "$will_configs_path"/bashrc "$bashrc_path" &&
        echo -e "successfully created symlink $BLUE$bashrc_path$DEFAULT -> $CYAN$will_configs_path/bashrc$DEFAULT"
else
    echo -e "$GREEN bash$DEFAULT directory isn't found"
    echo "creating..." &&
        ln -fs "$will_configs_path"/bashrc "$bashrc_path" &&
        echo -e "successfully created symlink $BLUE$bashrc_path$DEFAULT -> $CYAN$will_configs_path/bashrc$DEFAULT"
fi

space
