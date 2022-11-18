{ config, pkgs, lib, ... }:

{
  # Just use yaml config file as we don't want to manage GUI applications with home-manager if possible
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
  xdg.configFile."kitty/themes-custom".source = ./themes;
  xdg.configFile."kitty/themes-github".source = pkgs.fetchFromGitHub
    {
      owner = "kovidgoyal";
      repo = "kitty-themes";
      rev = "b1abdd54ba655ef34f75a568d78625981bf1722c";
      sha256 = "sha256-RcDmZ1fbNX18+X3xCqqdRbD+XYPsgNte1IXUNt6CxIA=";
      sparseCheckout = "themes";
    };
}
