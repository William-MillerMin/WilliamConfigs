BLUE="\e[34m"
CYAN="\e[36m"
DEFAULT="\e[0m"
will_configs_path="$HOME/.config/WilliamConfigs"
niri_folder_path="$HOME/.config/niri"
nvim_folder_path="$HOME/.config/nvim"
kitty_folder_path="$HOME/.config/kitty"

if [[ -e $niri_folder_path ]]; then
    echo "found niri directory/file"
    rm -fr "$niri_folder_path" && echo "original folder/file removed" && ln -s "$will_configs_path"/niri "$niri_folder_path" && echo -e "successfully created symlink $BLUE$niri_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
else
    echo "niri directory isn't found"
    echo "creating..."
    ln -fs "$will_configs_path"/niri "$niri_folder_path" && echo -e "successfully created symlink $BLUE$niri_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
fi

if [[ -e $nvim_folder_path ]]; then
    echo "found nvim directory/file"
    rm -fr "$nvim_folder_path" && echo "original folder/file removed" && ln -s "$will_configs_path"/nvim "$nvim_folder_path" && echo -e "successfully created symlink $BLUE$niri_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
else
    echo "nvim directory isn't found"
    echo "creating..."
    ln -fs "$will_configs_path"/nvim "$nvim_folder_path" && echo -e "successfully created symlink $BLUE$nvim_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
fi

if [[ -e $kitty_folder_path ]]; then
    echo "found kitty directory/file"
    rm -fr "$kitty_folder_path" && echo "original folder/file removed" && ln -s "$will_configs_path"/kitty "$kitty_folder_path" && echo -e "successfully created symlink $BLUE$nvim_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
else
    echo "kitty directory isn't found"
    echo "creating..."
    ln -fs "$will_configs_path"/kitty "$kitty_folder_path" && echo -e "successfully created symlink $BLUE$kitty_folder_path$DEFAULT -> $CYAN$will_configs_path$DEFAULT"
fi
