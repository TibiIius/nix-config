{ config, pkgs, username, ... }:
{
  # This auto-upgrades home-manager
  # There is a module for this included in home-manager, but it doesn't work with flakes yet, so this will have to do for now

  systemd.user = {
    timers = {
      update-home-manager-with-flake = {
        Unit = {
          Description = "Timer to run periodic home-manager updates with flake support";
          After = [ "network-online.target" ];
        };
        Timer = {
          OnCalendar = "20:00";
        };
        Install = {
          WantedBy = [ "timers.target" ];
        };
      };
    };
    services = {
      update-home-manager-with-flake = {
        Unit = {
          Description = "Update home-manager with flake support";
        };
        Service = {
          Type = "oneshot";
          ExecStart = "${pkgs.home-manager}/bin/home-manager switch --flake github:tibiiius/nix-config#${username} --show-trace";
        };
        Install = {
          WantedBy = [ "timers.target" ];
        };
      };
    };
  };
}
