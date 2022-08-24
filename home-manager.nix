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
        direnv = {
          enable = true;
          nix-direnv.enable = true;
        };
        zsh = {
          enable = true;
          enableAutosuggestions = true;
          enableCompletion = true;
          enableSyntaxHighlighting = true;
          initExtra = "zsh ~/.dotfiles/home/.zshrc";
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
            {
              name = "zsh-nix-shell";
              file = "nix-shell.plugin.zsh";
              src = pkgs.fetchFromGitHub {
                owner = "chisui";
                repo = "zsh-nix-shell";
                rev = "v0.5.0";
                sha256 = "0za4aiwwrlawnia4f29msk822rj9bgcygw6a8a6iikiwzjjz0g91";
              };
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
