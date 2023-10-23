#!/usr/bin/env fish

echo -e "\033[0;32m>>>>> Begin Setting Up Fish shell <<<<<\033[0m"

## Install fisher
if not type -q fisher
  echo "installing fisher"
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

fisher update

echo -e "\033[0;32m>>>>> Finish Setting Up Fish shell <<<<<\033[0m"
