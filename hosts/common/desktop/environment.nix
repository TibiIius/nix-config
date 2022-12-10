{ config, pkgs, pkgs-unstable, ... }:
{
  environment = {
    systemPackages = (with pkgs; [
      deja-dup
      docker-compose
      gnome.dconf-editor
      gnome.gnome-tweaks
      gnome.nautilus-python
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      xclip
    ]) ++ (with pkgs-unstable; [
      barrier
      bitwarden
      ((discord.overrideAttrs (oldAttrs: rec {
        desktopItem = oldAttrs.desktopItem.override (d: {
          exec = "${d.exec} --ignore-gpu-blocklist --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy";
        });
        installPhase = builtins.replaceStrings [ "${oldAttrs.desktopItem}" ] [ "${desktopItem}" ] oldAttrs.installPhase;
      })).override { nss = nss_latest; })
      distrobox
      element-desktop
      firefox
      hydrapaper
      kitty
      libsForQt5.qtstyleplugin-kvantum
      lutris
      neovim
      nextcloud-client
      obsidian
      onlyoffice-bin
      protonup
      spotify
      texlive.combined.scheme-full
      wget
      wireguard-tools
      xournalpp
      zathura
      zotero
    ]);
    gnome.excludePackages = with pkgs.gnome; [ geary ];
  };
}
