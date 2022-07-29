
# Create AppImages folder and config as regular app

**reference:** https://www.youtube.com/watch?v=bXZma0t0PKE


Create an AppImages folder at `~/AppImages` and move .AppImage files there.

For each file create Desktop entry in `~/.local/share/applications` with the following template

```
[Desktop Entry]
Type=Application
Name=Obsidian
Comment=Obsidian
Icon=/home/leonardo/Appimages/Obsidian-icon.png
Exec=/home/leonardo/Appimages/Obsidian-0.15.9.AppImage
Terminal=false
Categories=Office
```

Login and logout.