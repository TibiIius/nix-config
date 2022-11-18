{ config, pkgs, lib, ... }:

{
  # Just use yaml config file as we don't want to manage GUI applications with home-manager if possible
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
  xdg.configFile."kitty/themes-custom".source = ./themes;
  xdg.configFile."kitty/themes-github".source = pkgs.fetchFromGitHub
    {
      owner = "kovidgoyal";
      repo = "kitty-themes";
      rev = "master";
      sha256 = "sha256-xwyCcsRUZOsKYjxA2m7uurymrQiwBc8N91TbBcXcle8=";
    } + "/themes";
}
