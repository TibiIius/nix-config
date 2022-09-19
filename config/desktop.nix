# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./../home/tim
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable Plymouth
  boot.plymouth = {
    enable = true;
    theme = "breeze";
  };
  boot.initrd.systemd.enable = true; # Needed for Plymouth

  networking = {
    hostName = "nixos-laptop";
    networkmanager.enable = true;
    firewall = {
      allowedUDPPorts = [ 51280 ];
    };
    wg-quick = {
      interfaces = {
        wg0 = {
          address = [ "192.168.71.2/32" "fdc9:3c6b:21c7:e6bd::2/128" ];
          listenPort = 51820;
          privateKeyFile = "/home/tim/.local/share/wireguard/private.key";
          # postUp = [ "wg set wg0 peer fvvdgRvEafUBUFP5ZgQEtkGW6ybl3wJ1UgSBb393r1s= persistent-keepalive 25" ];
          dns = [ "192.168.2.192" ];

          peers = [
            {
              publicKey = "1Fx899Qb9lR/cLH4eMd4BMOOjmkdROTBNNbxysq6e1E=";
              allowedIPs = [ "0.0.0.0/0" "::/0" ];
              endpoint = "wg.timfb.dev:51820";
            }
          ];
        };
      };

    };
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_MONETARY = "de_DE.UTF-8";
      LC_PAPER = "de_DE.UTF-8";
      LC_MEASUREMENT = "de_DE.UTF-8";
      LC_TIME = "de_DE.UTF-8";
      LC_NUMERIC = "de_DE.UTF-8";
    };
  };
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkbOptions in tty.
  # };

  services.xserver = {
    enable = true;
    displayManager = {
      gdm.enable = true;
    };
    desktopManager.gnome.enable = true;
  };

  security.pam = {
    services = {
      login.fprintAuth = true;
      gdm = {
        enableGnomeKeyring = true;
        fprintAuth = true;
      };
    };
  };

  # Configure keymap in X11
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = {
  #   "eurosign:e";
  #   "caps:escape" # map caps to escape.
  # };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    groups.tim = {
      name = "tim";
      gid = 1000;
      members = [ "tim" ];
    };
    users.tim = {
      isNormalUser = true;
      uid = 1000;
      description = "Tim Brüggemann";
      home = "/home/tim";
      initialPassword = "123";
      group = "tim";
      shell = pkgs.zsh;
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    barrier
    bat
    bitwarden
    discord
    du-dust
    element-desktop
    eww-wayland
    exa
    fd
    firefox
    fzf
    gnome.dconf-editor
    gnome.gnome-tweaks
    hyper
    libsForQt5.qtstyleplugin-kvantum
    lutris
    nautilus-open-any-terminal
    neovim
    nextcloud-client
    nodejs
    obsidian
    onlyoffice-bin
    procs
    protonup
    ripgrep
    spotify
    texlive.combined.scheme-full
    waybar
    wget
    wireguard-tools
    wofi
    xclip
    xh
    zathura
    zoxide
  ];

  programs = {
    steam.enable = true;
    gamemode.enable = true;
  };

  hardware.opengl.driSupport32Bit = true;

  # Enable sensors
  hardware.sensor.iio.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  services = {
    fprintd.enable = true;
  };

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
