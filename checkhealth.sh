#! /bin/bash
NVIM="$(echo ~)/.config/nvim" # /home/alan/.config/nvim
PLUGINS_FILE="plugins"
CHECKHEALTH_RESULT="all"
vim_command=""

if [ "$(cat "$NVIM/lua/reseased.lua" | grep "{ isChecking = true }")" = "" ]; 
  then echo "IMPORTANT: replace \`isChecking\` to true into $NVIM/lua/\`reseased.lua\`";
  else
# replace true to false
  sed -i "1s/isChecking = true/isChecking = false/" "$NVIM/lua/reseased.lua" &&
# remove old files
  rm -rf "$NVIM/lua/checkhealth" && 
# create new folder
  mkdir "$NVIM/lua/checkhealth" && 
# create a file with all checkhealth results
	vim --cmd "checkhealth | w $NVIM/lua/checkhealth/$CHECKHEALTH_RESULT | qa!" && sleep 1;

# read and create a plugins list
  cat "$NVIM/lua/checkhealth/$CHECKHEALTH_RESULT" | grep -P ': require' | cut -d ":" -f 1 > "$NVIM/lua/checkhealth/$PLUGINS_FILE" && 
# destroy checkhealth results file
	rm -rf "$NVIM/lua/checkhealth/$CHECKHEALTH_RESULT" && sleep 1;

# create a vim command
	while read item; do
    vim_command="$vim_command checkhealth $item | w $NVIM/lua/checkhealth/$item.yaml |";
  done < "$NVIM/lua/checkhealth/$PLUGINS_FILE" 

# execute vim command and destroy plugins list file
  vim --cmd "$vim_command qa!" && rm -rf "$NVIM/lua/checkhealth/$PLUGINS_FILE";

  vim
fi

