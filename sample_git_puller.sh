#!/bin/bash
echo "Attention! Restricted Area!!!"
echo "Just about to pull latest from origin"
sleep 0.1

read -n1 -p "Do you to continue, and assume responsibility? [y,n] `echo $'\n>'`" outp
echo -e ""
case $outp in
  y|Y) date; git pull ;;
  n|N) echo -e "Please go on Captain!" ;;
  *)   echo -e "Wrong input, fetching for good measure"; date; git fetch ;;
esac
