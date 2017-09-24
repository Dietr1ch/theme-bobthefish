function fish_greeting -d "what's up, fish?"
  set_color $fish_color_autosuggestion
  uname -nmsr
  uptime
  if test -e /proc/acpi/bbswitch
    if grep "ON" /proc/acpi/bbswitch > /dev/null
      set_color red
      echo "Video card is ON!!"
    end
  end
  set_color normal
end
