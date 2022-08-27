# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/962108cf-744d-4928-ad29-76c3d3c48066";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=zstd" "noatime" "nodiratime" "discard" ];
    };

  boot.initrd.luks.devices."luks-c3e3ba06-3bdc-4d4e-8695-186c8c51dc49".device = "/dev/disk/by-uuid/c3e3ba06-3bdc-4d4e-8695-186c8c51dc49";

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/962108cf-744d-4928-ad29-76c3d3c48066";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=zstd" "noatime" "nodiratime" "discard" ];
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/962108cf-744d-4928-ad29-76c3d3c48066";
      fsType = "btrfs";
      options = [ "subvol=nix" "compress=zstd" "noatime" "nodiratime" "discard" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/E229-27F7";
      fsType = "vfat";
      options = [ "noatime" "nodiratime" "discard" ];
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp2s0.useDHCP = lib.mkDefault true;

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}