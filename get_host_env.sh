#!/bin/bash

if [ -z "$1" ]
then
      echo "No environment is given."
      exit 1
fi

ansible -m debug -a 'msg={{group_names}}' $1 | tr -d " " | tr -s '\n' ' ' | tr -s '}' '\n'  | tr -d " " | tr -s "|" " " | tr -s "[]" " " | cut -d " " -f1,3 | tr -d '"'
