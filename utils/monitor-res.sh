# Prints connected monitors
xrandr

# Create a new resolution for monitor HDMI-1
# cvt 1920 1200
cvt 2560 1440
sudo xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync # CnP from output above
sudo xrandr --addmode HDMI-1 "2560x1440_60.00