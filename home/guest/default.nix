{ config, pkgs, lib, ... }:

{
  imports = [
    ../common/vscode.nix
  ];

  home = {
    username = "guest";
    homeDirectory = "/home/guest";
    stateVersion = "22.05";

    sessionVariables = {
      XCURSOR_PATH = "$HOME/.local/share/icons:$XCURSOR_PATH";
    };
    sessionPath = [ "$HOME/.local/bin" ];
  };

  # Needed for non-NixOS
  targets.genericLinux.enable = true;
  # Doesn't set itself on my non-NixOS system
  xdg.systemDirs.data = [ "~/.nix-profile/share" ];

  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
