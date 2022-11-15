{ config, pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      barrier
      bitwarden
      deja-dup
      ((discord.overrideAttrs (oldAttrs: rec {
        desktopItem = oldAttrs.desktopItem.override (d: {
          exec = "${d.exec} --ignore-gpu-blocklist --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy";
        });
        installPhase = builtins.replaceStrings [ "${oldAttrs.desktopItem}" ] [ "${desktopItem}" ] oldAttrs.installPhase;
      })).override { nss = nss_latest; })
      distrobox
      docker-compose
      element-desktop
      firefox
      gnome.dconf-editor
      gnome.gnome-tweaks
      gnome.nautilus-python
      home-manager
      hydrapaper
      kitty
      libsForQt5.qtstyleplugin-kvantum
      lutris
      nautilus-open-any-terminal
      neovim
      nextcloud-client
      nodejs
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      obsidian
      onlyoffice-bin
      protonup
      spotify
      texlive.combined.scheme-full
      tmux
      wget
      wireguard-tools
      xclip
      xournalpp
      zathura
      zotero
    ];
    gnome.excludePackages = with pkgs.gnome; [ geary ];
  };
}
