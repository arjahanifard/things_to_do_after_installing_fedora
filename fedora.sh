#!/bin/bash
#این برنامه برای کاربران تازه کار فدورا درست شده است و مرتب هم به روزرسانی خواهد شد
clear
extit_program="y"
while [ "$extit_program" == "y" ];do
  echo -e "adade marhale mored nazare khodetan ra entekhab bekonid:\n1)tarrif user root\t2)beroz resani(update)"
  read step
  case "$step" in
    "1")
    echo "dar ayandeh ezafe mishavad";;
    "2")
    echo "ramz hesab karbary khod ra vared bekonid"
    sudo dnf -y update
    notify-send -t 5000 "be roz resani anjam shod";;
  esac
  read -p "aya mikhahid edame dahid(y/n)" extit_program
done
