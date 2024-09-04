MY_HOME=/home/alan/
CUSTOM_PATH=~/.oh-my-zsh/custom/PATHS
DIVISOR=":"

function gsave(){
  git stash save --include-untracked "$(date +%d/%m-%H:%M) -> $*";
}

 function greset(){
  git reset HEAD~;
}

function gpop(){
  if [ -z "$1" ]; then git stash pop && git reset ./;
  else git stash pop stash@{$1} ||  gstl;
  fi
}

function gshow(){
  if [ -z "$1" ]; then  gstl;
  else git stash show stash@{$1} -p;
  fi
}

function removeStash(){
  git stash clear;
}

function removeChanges(){
  modified=$(gst | grep "working tree clean");

  if [ -z "$modified" ]; then git clean -fxd;
  else echo 'All changes have been removed.';
  fi
}

function gbdr(){
  git checkout "$1";
  git branch -m "temp.$1";
  gco -;
  git push origin -d "$1";
}

function gfap(){
  git fetch -ap;
}

function removeBranches(){
  for i in $(git branch | grep '/'); do
    git branch -D $i 
  done
}

function vercel() {
  git add ./ && git commit --allow-empty -m "vercel deploy $*";
}

function commit() {
  if [ -z "$1" ]; then echo "git add . && git commit -m <message>; [ Message is required! ]";
  else git add . && git commit -m "$*";
  fi
}

function go() {
  if [ -z "$1" ]; then gbr;
  else gco $(gb | grep "$1") && ezsh;
  fi
  
}

function remove(){
  case $1 in
    "changes") removeChanges;
  ;;
    "branchs") removeBranches;
  ;;
    "stash") removeStash;
  ;;
    *) echo '
  $ remove changes #-> to remove all changes not commited 
  $ remove branchs #-> to remove all unused branchs
  $ remove stash #-> to remove all stash list
  ';
  ;
  ;;
  esac
}

function cmm() {
  flag=$1;
  shift;

  git commit -m "$flag: $*";
}

function acmm() {
  # runs TYPECHECK and LINT and ADD and COMMIT and PUSH
  typecheck && yarn lint && git add . && cmm $* && ggpush;
}

function kill() { 
  lsof -P | grep $1 | awk '{print $2}' | xargs kill -9;
}

function save() {
  part1=""
  part2=""
  part3=""
  part4="empty"
  part5="empty"
  part6="empty"

  clear
  echo "${BICyan}|    Current path:${BIBlue} '$(pwd)'${Color_Off}\n"
  # Primeira pergunta
  echo "${ICyan}Alias name:${BYellow}"
  read -r part1 

  # Segunda pergunta
  echo "${ICyan}For this path? (y=Yes | n=No):${BYellow}"
  read -r is_current_path

  if [[ "$is_current_path" =~ ^[Yy]$ ]]; then
    part2=$(pwd)
  else
    echo "${ICyan}Which path do you want?${BYellow}"
    read -r part2
  fi

  # Terceira pergunta
  echo "${ICyan}Has node version? (y=Yes | n=No):${BYellow}"
  read -r is_current_node

  if [[ "$is_current_node" =~ ^[Nn]$ ]]; then
    part3="empty"
  else
    nvm ls --no-alias
    echo "${ICyan}Which node version do you want?${BYellow}"
    read -r part3
  fi

  echo "${IRed}|"
  echo "${IRed}|    Name:${IBlue} $part1 ${IRed}"
  echo "${IRed}|    Path:${IBlue} $part2 ${IRed}"
  echo "${IRed}|    Node version:${IBlue} $part3 ${IRed}"
  echo "${IRed}|"

  # Pergunta final
  echo "${ICyan}Save this alias? (y=Yes | n=No):${BYellow}"
  read -r confirm

  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    new_alias="_$part1:$part2:$part3:$part4:$part5:$part6" 
    echo "$new_alias" >> $CUSTOM_PATH
    source "$MY_HOME/.zshrc"
    echo "${BICyan}CREATED:${BIGreen} $new_alias ${Color_Off}"
  else
    echo "${IRed}CANCELED!${Color_Off}"
  fi
}

function rbak() {
  if [ -z "$1" ]; then rm -rf ~/.config/nvim;  cp -r ~/.config/nvim.baks/current ~/.config/nvim;
  else
    rm -rf ~/.config/nvim;  cp -r ~/.config/nvim.baks/"$1"/ ~/.config/nvim;
  fi
}

function g.() {
  if [ -z "$1" ]; then cat $CUSTOM_PATH;
    echo "Correct: '$ g. path_alias' or '$ g. directory_name'"
  else
    part1=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 1)
    part2=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 2)
    part3=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 3)
    part4=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 4)
    part5=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 5)
    part6=$(grep -P "_$1" "$CUSTOM_PATH" | tr -d '\n' | cut -d "$DIVISOR" -f 6)

    if [ "empty" = "$part1" ]; then
      :
    else
      echo "${ICyan}Redirecting to ${BYellow}'$part2'${Color_Off}"
    fi

    if [ "empty" = "$part2" ]; then
      echo "${IRed}Empty value message${Color_Off}"
    else
      cd "$part2" || return
    fi

    if [ "empty" = "$part3" ]; then
      echo "${IRed}There is no node version defined for this project${Color_Off}"
    else
      git branch --remote | grep "origin/";
      nvm use "$part3" || (nvm install "$part3" && nvm use "$part3");
      npm i yarn --global;
    fi

    if [ "empty" = "$part4" ]; then
      :
    else
      echo "$part4"
    fi

    if [ "empty" = "$part5" ]; then
      :
    else
      echo "$part5"
    fi

    if [ "empty" = "$part6" ]; then
      :
    else
      echo "$part6"
    fi
  fi
}
