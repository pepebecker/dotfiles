function keystroke
  while true;
    osascript -e 'tell application "System Events" to keystroke "hjkl"';
    sleep 0.3;
  end
end
