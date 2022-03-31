# 1. LOAD CONFIGURATION
ZSH_Manager_FOLDER=$(dirname $(realpath $HOME/.zshrc)) # Read real filepath.
ZSH_Manager_PRELOAD_CONFIGS_FOLDER=${ZSH_Manager_FOLDER}/preload_configs
ZSH_Manager_MODULES_FOLDER=${ZSH_Manager_FOLDER}/modules

local BASE_FOLDERS=("$ZSH_Manager_PRELOAD_CONFIGS_FOLDER" "$ZSH_Manager_MODULES_FOLDER")

local OS_SCRIPT_FOLDERS=("common" "$OSTYPE")

local OS_FOLDER=""

# Add additional os-folder to detect.
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS_FOLDER="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS_FOLDER="macos"
elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    OS_FOLDER="windows"
fi

OS_SCRIPT_FOLDERS=("${OS_SCRIPT_FOLDERS[@]}" $OS_FOLDER)

ZSH_Manager_PATH_CONFIG=${ZSH_Manager_FOLDER}/preload_configs/"$OS_FOLDER"/path.sh

include () {
    [[ -f "$1" ]] && source "$1"
}

include $ZSH_Manager_PATH_CONFIG
include $HOME/.env.sh

# 2. LOAD PRELOAD CONFIGS THEN MODULES (ALIASES & FUNCTIONS etc.)
for base_folder in "${BASE_FOLDERS[@]}"; do
  for os_folder in "${OS_SCRIPT_FOLDERS[@]}"; do
    folder="$base_folder/$os_folder"
    if [[ -d "$folder" ]]; then
      # Handle folders with spaces in their names too.
      # Ignore files and folders starting with #.
      find "$folder" -type d -name "#*" -prune -o -type f -name "*.sh" -print0 | while IFS= read -r -d '' script; do
        #echo "$script"
        source "$script"
      done
    fi
  done
done
