#!/bin/bash
function notification() {
  osascript <<EOT
    tell app "System Events"
      display dialog "$1" buttons {"OK"} default button 1 with icon note with title "$2"
      return
    end tell
EOT
}

notification "$MESSAGE" "$TITLE"
