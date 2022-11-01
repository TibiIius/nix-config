{ config, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    qemu.swtpm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    spice
    spice-gtk
    spice-vdagent
    spice-protocol
    virt-manager
    win-virtio
    win-spice
  ];
}
