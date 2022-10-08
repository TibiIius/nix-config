{ config, pkgs, lib, ... }:

{
  imports = [
    ../common/nvim.nix
    ../common/vscode.nix
    ../common/zsh
    ../common/alacritty
  ];

  fonts.fontconfig.enable = true;

  home = {
    username = "tim";
    homeDirectory = "/home/tim";
    stateVersion = "22.05";

    # Fonts
    packages = with pkgs; [
      bandwhich
      bat
      bottom
      procs
      exa
      tokei
      ripgrep
      du-dust
      fd
      zoxide
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      inter
      (nerdfonts.override {
        fonts = [ "UbuntuMono" "JetBrainsMono" "FiraCode" "FantasqueSansMono" ];
      })
    ];
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
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    git = {
      enable = true;
      userName = "TimFB";
      userEmail = "56914732+TibiIius@users.noreply.github.com";
      lfs.enable = true;
      delta.enable = true;
    };
  };
}
