{ config, pkgs, ... }:

{
# Enable the X11 windowing system.
services.xserver.enable = true;

# Enable the GNOME Desktop Environment.
services.displayManager.gdm.enable = true;
services.desktopManager.gnome.enable = true;

services.xserver.xkb = {
  # Add my custom layout.
  extraLayouts.us-ger = {
    description = "US layout with umlaute";
    languages = [ "eng" ];
    symbolsFile = /home/jan/all/nixos/symbols/us-ger;
  };

  # Apply the layout.
  layout = "us-ger";
  variant = "";
};


# Remap CAPS lock to ESC (nvim <3).
services.udev.extraHwdb = ''
  evdev:atkbd:*
    KEYBOARD_KEY_3a=esc
  '';
}

