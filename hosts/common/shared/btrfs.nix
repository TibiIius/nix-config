{ config, pkgs, ... }:

{
  services = {
    cron = {
      enable = true;
      systemCronJobs = [
        "00 20 * * * root flock /tmp/btrfs-balance-cron.lock btrfs balance start -dusage=50 -dlimit=2 -musage=50 -mlimit=4 / >/dev/null 2>&1"
        "00 22 * * 00 root flock /tmp/btrfs-balance-cron.lock btrfs balance start -dusage=90 -musage=90 / >/dev/null 2>&1"
      ];
    };
  };
}
