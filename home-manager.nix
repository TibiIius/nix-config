{ config, pkgs, lib, ... }:

{
  imports = [ <home-manager/nixos> ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;

    users.tim = { pkgs, ... }: {
      home = {
        username = "tim";
        homeDirectory = "/home/tim";
        stateVersion = "22.05";
      };

      programs = {
        zsh = {
          enable = true;
          enableAutosuggestions = true;
          enableCompletion = true;
          enableSyntaxHighlighting = true;
          initExtra = "~/.dotfiles/home/.zshrc";
          oh-my-zsh = {
            enable = true;
          };
          plugins = [
            {
              name = "powerlevel10k";
              src = pkgs.zsh-powerlevel10k;
              file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
            }
            {
              name = "powerlevel10k-config";
              src = /home/tim/.dotfiles/home;
              file = ".p10k.zsh";
            }
          ];
        };
        git = {
          enable = true;
          userName = "TimFB";
          userEmail = "56914732+TibiIius@users.noreply.github.com";
          lfs.enable = true;
        };
        neovim = {
          enable = true;
          viAlias = true;
          vimAlias = true;
          vimdiffAlias = true;
          extraConfig = ''
            if filereadable(expand('~/.dotfiles/config/nvim/init.vim'))
              source $HOME/.dotfiles/config/nvim/init.vim
            endif
          '';
        };
      };
    };
  };
}
