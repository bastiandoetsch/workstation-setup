echo
echo "We need SDKMAN, installing..."
if [[ ! -d "$HOME/.sdkman" ]]; then
  echo "Installing sdkman"
  curl -s "https://get.sdkman.io?rcupdate=false" | bash
  # shellcheck disable=SC2016
  echo '[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"' >>~/.zshrc
fi

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "Installing Java 8"
sdk install java $(sdk ls java |grep 8.0|grep hs-adpt|cut -d\| -f6)
