args@{ config, pkgs, lib, ... }:

{
  imports = [
    (import ../common/auto-upgrade.nix
      (args
        // { username = "tim"; }
      )
    )
    ../common/nvim.nix
    ../common/vscode.nix
    ../common/kitty
    ../common/zsh
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
      ranger
      ripgrep
      du-dust
      fd
      xh
      zoxide
      inter
      (nerdfonts.override {
        fonts = [ "UbuntuMono" "JetBrainsMono" "FiraCode" "FantasqueSansMono" ];
      })
    ];
    sessionVariablesExtra = ''
      export XCURSOR_PATH="$HOME/.local/share/icons:$XCURSOR_PATH"
    '';
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
      signing = {
        signByDefault = true;
        key = "711B5B3EEB2661CEF4CAA41F4B3B63F9A1CB361C";
      };
    };
  };
}
