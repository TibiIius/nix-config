{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    enableVteIntegration = true;
    shellAliases = {
      # Replacements
      cat = "bat";
      grep = "rg";
      find = "fd";
      du = "dust";
      # Git aliases
      gitc = "git commit";
      gitca = "git commit --amend --no-edit";
      gitcf = "git commit --fixup HEAD";
      gitg = "git fetch --all && git pull";
      gitgp = "git fetch --all --prune && git pull";
      gitp = "git push";
      # Misc
      updateArch = "flatpak update && yay -Syyyu";
      temppls = "cd $(mktemp -d)";
      rm = "rm -I";
    };
    envExtra = ''
      # Some env variables
      export EDITOR=nvim
      export VISUAL=nvim
      export BROWSER=firefox
      export CM_LAUNCHER=rofi
      export QT_QPA_PLATFORMTHEME=qt5ct
      export KRITA_NO_STYLE_OVERRIDE=1

      # Fuck Microsoft
      export DOTNET_CLI_TELEMETRY_OPTOUT=1
      export FrameworkPathOverride=/usr/lib/mono/4.5/
      export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

      # Extend PATH variable
      export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

      # Add poetry related stuff
      [[ -d "$HOME/.poetry/bin" ]] && export PATH="$HOME/.poetry/bin:$PATH"

      # Go
      GOPATH=$HOME/.local/share/go

      # home-manager on non-NixOS
      [[ -f "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ]] && . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
    '';
    initExtra = ''
      TMUX_EXEC=$(which tmux)

      tmux() {
        if [ -z "$1" ]; then
          $TMUX_EXEC
        else
          if [ "$1" = "a" ] && ! $TMUX_EXEC has-session 2>/dev/null; then
            $TMUX_EXEC
          else
            $TMUX_EXEC $1
          fi
        fi
      }

      # Zoxide
      eval "$(zoxide init zsh)"

      # Distrobox host communication
      command_not_found_handle() {
      # don't run if not in a container
        if [ ! -e /run/.containerenv ] && [ ! -e /.dockerenv ]; then
          exit 127
        fi
        
        distrobox-host-exec "$@"
      }
      if [ -n "$ZSH_VERSION" ]; then
        command_not_found_handler() {
          command_not_found_handle "$@"
       }
      fi
    '';
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
        src = ./.;
        file = "p10k.zsh";
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
      {
        name = "zsh-aliases-exa";
        file = "zsh-aliases-exa.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "TibiIius";
          repo = "zsh-aliases-exa";
          rev = "master";
          sha256 = "1gp1w6420m1rlnxgg1kk8wms939d1m2bcxga59gxn29arks6qp01";
        };
      }
    ];
  };
}
