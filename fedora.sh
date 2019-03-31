#!/bin/bash
#این برنامه برای کاربران تازه کار فدورا درست شده است و مرتب هم به روزرسانی خواهد شد
clear
exit_program="y"
while [ "$exit_program" == "y" ];do
  echo -e "adade marhale mored nazare khodetan ra entekhab bekonid:\n1)tarrif user root\t2)beroz resani(update)"
  read step
  case "$step" in
    "1")
    echo "dar ayandeh ezafe mishavad";;
    "2")
    notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
    sudo dnf -y update
    notify-send -t 5000 "به روز رسانی انجام شد";;
  esac
  read -p "aya mikhahid edame dahid(y/n)" exit_program
done
