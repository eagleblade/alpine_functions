#!/bin/bash

#checks if an user exsist or not, in /etc/passwd
# Usage
# check_user USERNAME

check_user() {
  local USER=$(awk -v val=$1 -F ":" '$1==val{print $1}' /etc/passwd)
    if [ "$USER" = "$1" ]; then
      echo "user: $USER exist"; else
      echo "user: $1 does not exist"
    fi
}

#checks if an group exsist or not, in /etc/group
# Usage
# check_group GROUP

check_group() {
  local GROUP=$(awk -v val=$1 -F ":" '$1==val{print $1}' /etc/group)
    if [ "$GROUP" > "0" ]; then
         echo "group exists"
    else
         echo "group does not exist"
    fi
}
