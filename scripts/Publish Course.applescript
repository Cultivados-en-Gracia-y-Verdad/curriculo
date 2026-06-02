on run
  set curriculoRoot to "/Users/johnwry/Nextcloud/Documents/GitHub/curriculo"
  set courseName to text returned of (display dialog "Publish course to main + website:" default answer "santiago" buttons {"Cancel", "Run"} default button "Run" with title "CGV Publish Course")

  tell application "Terminal"
    activate
    do script "cd " & quoted form of curriculoRoot & " && ./scripts/publish-course.sh " & quoted form of courseName
  end tell
end run
