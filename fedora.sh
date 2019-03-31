#!/bin/bash
#این برنامه برای کاربران تازه کار فدورا درست شده است و مرتب هم به روزرسانی خواهد شد
clear
echo -e "adade marhale mored nazare khodetan ra entekhab bekonid:\n1)tarrif user root\t2)beroz resani(update)"
read step
case "$step" in
  "1")
  echo "dar ayandeh ezafe mishavad";;
  "2")
  sudo dnf -y update
  notify-send "dar hal berozresani";;
esac
