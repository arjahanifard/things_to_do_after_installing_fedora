#!/bin/bash
#این برنامه برای کاربران تازه کار فدورا درست شده است و مرتب هم به روزرسانی خواهد شد
clear
notify_func (){
  if [ "$?" == "0" ];then
    notify-send -t 5000 "عملیات با موفقیت انجام شد"
  else
    notify-send -t 3000 "خطا در انجام عملیات لطفا مجددا انجام دهید"
  fi
}
exit_program="y"
while [ "$exit_program" == "y" ];do
  echo -e "adade marhale mored nazare khodetan ra entekhab bekonid:\n1)tarrif user root\t2)beroz resani(update)\t3)afzodane makhazen rpmfusion(add rpmfusion)\n
4)afzodane codec soti va tasfiri\n"
  read -p "adade morede nazare khod ra vared konid: " step
  case "$step" in
    "1")
      notify-send -t 3000 "روت کردن حساب کاربری"
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      su -c "usermod -aG  wheel $USERNAME";;
    "2")
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      sudo dnf -y update
      notify_func;;
    "3")
      notify-send -t 3000 "اضافه کردن مخازن rpmfusion"
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      sudo dnf  -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
      notify_func;;
      "4")
      notify-send -t 3000 "نصب کدکهای تصویری برای پخش فایلهای صوتی و تصویری"
      notify-send -t 3000 "رمز حساب کاربری خود را وارد کنید"
      sudo dnf -y install gstreamer gstreamer-ffmpeg gstreamer-plugins-bad-free gstreamer-plugins-bad-nonfree gstreamer-plugins-base gstreamer-plugins-good gstreamer-plugins-ugly gstreamer-plugins-bad ffmpeg libdvdread libdvdnav audacious-plugins-freeworld-mp3 phonon-backend-gstreamer xine-lib-extras-freeworld libva-intel-driver libva-intel-hybrid-driver python3-tkinter vim-enhanced vim-X11 gstreamer-plugins-good-extras gstreamer-devel gstreamer-plugins-base-devel gstreamer1-libav gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly lsdvd lame faad2 ffmpeg-libs
      notify_func;;
    esac
  read -p "aya mikhahid edame dahid(y/n)" exit_program
done
