#!/bin/bash
#این برنامه برای کاربران تازه کار فدورا درست شده است و مرتب هم به روزرسانی خواهد شد
clear
exit_program="y"
while [ "$exit_program" == "y" ];do
  echo -e "adade marhale mored nazare khodetan ra entekhab bekonid:\n1)tarrif user root\t2)beroz resani(update)\t3)afzodane makhazen rpmfusion(add rpmfusion)"
  read step
  case "$step" in
    "1")
      echo "dar ayandeh ezafe mishavad";;
    "2")
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      sudo dnf -y update
      if [ "$?" == "0" ];then
        notify-send -t 5000 "به روز رسانی انجام شد"
      else
        notify-send -t 3000 "خطا در به روزرسانی"
      fi;;
    "3")
      notify-send -t 3000 "اضافه کردن مخازن rpmfusion"
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      sudo dnf  -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
      if [ "$?" == "0" ];then
        notify-send -t 5000 "مخازن اضافه شد"
      else
        notify-send -t 3000 "خطا در اضافه کردن مخازن"
      fi;;
    esac
  read -p "aya mikhahid edame dahid(y/n)" exit_program
done
