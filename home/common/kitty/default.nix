{ config, pkgs, lib, ... }:

{
  # Just use yaml config file as we don't want to manage GUI applications with home-manager if possible
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
}
