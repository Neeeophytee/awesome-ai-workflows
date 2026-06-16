# VHS tape -> produces verify-demo.gif for the README.
# Install VHS once:  brew install vhs   (https://github.com/charmbracelet/vhs)
# Generate the GIF:  cd assets && vhs verify.tape
# Then reference it in README.md:  ![How verification works](assets/verify-demo.gif)

Output verify-demo.gif

Set Shell bash
Set FontSize 20
Set Width 1040
Set Height 600
Set Padding 28
Set Theme "Catppuccin Mocha"
Set PlaybackSpeed 1.0

Hide
Type "bash demo.sh"
Enter
Show
Sleep 16s
