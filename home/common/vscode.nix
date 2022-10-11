{ config, pkgs, lib, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      arcticicestudio.nord-visual-studio-code
      arrterian.nix-env-selector
      christian-kohler.path-intellisense
      davidanson.vscode-markdownlint
      dbaeumer.vscode-eslint
      denoland.vscode-deno
      eamodio.gitlens
      eg2.vscode-npm-script
      esbenp.prettier-vscode
      formulahendry.auto-rename-tag
      github.vscode-pull-request-github
      grapecity.gc-excelviewer
      gruntfuggly.todo-tree
      ibm.output-colorizer
      jnoortheen.nix-ide
      llvm-vs-code-extensions.vscode-clangd
      marp-team.marp-vscode
      ms-azuretools.vscode-docker
      ms-dotnettools.csharp
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter
      ms-toolsai.jupyter-renderers
      ms-vscode-remote.remote-ssh
      ms-vscode.cpptools
      ms-vsliveshare.vsliveshare
      octref.vetur
      pkief.material-icon-theme
      prisma.prisma
      redhat.vscode-yaml
      ritwickdey.liveserver
      rust-lang.rust-analyzer
      serayuzgur.crates
      svelte.svelte-vscode
      tamasfe.even-better-toml
      tomoki1207.pdf
      usernamehw.errorlens
      vadimcn.vscode-lldb
      vscodevim.vim
      yzhang.markdown-all-in-one
      zhuangtongfa.material-theme
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "better-comments";
        publisher = "aaron-bond";
        version = "3.0.2";
        sha256 = "sha256-hQmA8PWjf2Nd60v5EAuqqD8LIEu7slrNs8luc3ePgZc=";
      }
      {
        name = "vscode-theme-onelight";
        publisher = "akamud";
        version = "2.2.3";
        sha256 = "sha256-H86Tk/YBJVqzX6Icx0YpGCGi3/u7bVe2m2ZRs/U57dc=";
      }
      {
        name = "moonlight";
        publisher = "atomiks";
        version = "0.10.6";
        sha256 = "sha256-2Du/2rLWZUMo746rVWnngj0f0/H/94bt3rF+G+3Ipqw=";
      }
      {
        name = "vscode-icontheme-nomo-dark";
        publisher = "be5invis";
        version = "1.3.6";
        sha256 = "sha256-HEym2csu6PU+zKKFWBQP4DwpmD+ntYPtXOIbUv4BmtA=";
      }
      {
        name = "vscode-github-actions";
        publisher = "cschleiden";
        version = "0.24.2";
        sha256 = "sha256-ZLy/0ftGKVzMZD64uY99Gt8EL7HRewhpxpkNg3qpasg=";
      }
      {
        name = "RunOnSave";
        publisher = "emeraldwalk";
        version = "0.2.0";
        sha256 = "sha256-nPm9bTEnNHzb5omGoEh0e8Wp+XTLW2UTtr/OuSBd99g=";
      }
      {
        name = "tokyo-night";
        publisher = "enkia";
        version = "0.9.4";
        sha256 = "sha256-pKokB6446SR6LsTHyJtQ+FEA07A0W9UAI+byqtGeMGw=";
      }
      {
        name = "vsc-community-material-theme";
        publisher = "equinusocio";
        version = "1.4.4";
        sha256 = "sha256-Pn1IcgpwknVyKSnqs9/ZF2w6D2zASlAI6maPnvIltAA=";
      }
      {
        name = "vsc-material-theme";
        publisher = "equinusocio";
        version = "33.5.0";
        sha256 = "sha256-Lls979mJuKE0+oIPAuDyl60dRzJM3WsqlShKeHpFKd8=";
      }
      {
        name = "vsc-material-theme-icons";
        publisher = "equinusocio";
        version = "2.4.0";
        sha256 = "sha256-2M/Pvfaxeouc6h5FwmXxky4aQX+Nqqj0CQhJq83SOD8=";
      }
      {
        name = "vue-inline-template";
        publisher = "faisalhakim47";
        version = "1.0.1";
        sha256 = "sha256-TphaPFiZKfZIyr0HESNfH1AMnMZgOCBTdTBm1P0ApjU=";
      }
      {
        name = "cpp-reference";
        publisher = "guyutongxue";
        version = "0.2.2";
        sha256 = "sha256-BP/H+7WkHSxBj1o+uE+UHt353A0y+qa+jfXiBPxEZ/E=";
      }
      {
        name = "markdown-image";
        publisher = "hancel";
        version = "1.1.22";
        sha256 = "sha256-1iQ4KFucqfqsLpMH2YikVwzJH43vDFIDDDqvX3I/DII=";
      }
      {
        name = "pandoc-markdown-preview";
        publisher = "kzvi";
        version = "0.4.1";
        sha256 = "sha256-hq/U7bJKrc8LDSn7/dYWcHM8Avl/+2zDwT0KXWRV0V4=";
      }
      {
        name = "materialdesignicons-intellisense";
        publisher = "lukas-tr";
        version = "4.1.0";
        sha256 = "sha256-hxbU2fdXNr3lpZYQoF63XQOFGbJnqCImR8XNTXUH3xI=";
      }
      {
        name = "markdown-link-updater";
        publisher = "mathiassoeholm";
        version = "2.3.0";
        sha256 = "sha256-l2oJs4c1PgzMA0bxQUO2MaqXbBfYA16jYZD/i6luvtk=";
      }
      {
        name = "jupyter-keymap";
        publisher = "ms-toolsai";
        version = "1.0.0";
        sha256 = "sha256-aP9mRvNfJ/fXSZk286FPo9gH80qwqm8mTDQ2BR+lfHI=";
      }
      {
        name = "remote-ssh-edit";
        publisher = "ms-vscode-remote";
        version = "0.84.0";
        sha256 = "sha256-33jHWC8K0TWJG54m6FqnYEotKqNxkcd/D14TFz6dgmc=";
      }
      {
        name = "cmake-tools";
        publisher = "ms-vscode";
        version = "1.13.9";
        sha256 = "sha256-SFVaXEY1Lnv9T9GJuynzUovUlA6/LxzU+8nac/zpecE=";
      }
      {
        name = "makefile-tools";
        publisher = "ms-vscode";
        version = "0.6.0";
        sha256 = "sha256-Sd1bLdRBdLVK8y09wL/CJF+/kThPTH8MHw2mFQt+6h8=";
      }
      {
        name = "pandocciter";
        publisher = "notzaki";
        version = "0.9.3";
        sha256 = "sha256-zc0vaP6bloghJzkcFebx7lAYyIw00yT1Nrtx5PFBKLw=";
      }
      {
        name = "platformio-ide";
        publisher = "platformio";
        version = "2.5.4";
        sha256 = "sha256-/vBdZ6Mu1KlF+glqp5CNt9WeK1ECqfaivCnK8TisChg=";
      }
      {
        name = "vscode-commons";
        publisher = "redhat";
        version = "0.0.6";
        sha256 = "sha256-tqjGKrQ6fhjco7/sgh2jaJCpikXyzeCOkHM8nRekFq0=";
      }
      {
        name = "synthwave-vscode";
        publisher = "robbowen";
        version = "0.1.14";
        sha256 = "sha256-R/LiWM16jfxCKq3uHGgZwb5ys+ENdlQ7DvLdEBkKLDU=";
      }
      {
        name = "outrun";
        publisher = "samrapdev";
        version = "0.2.2";
        sha256 = "sha256-d0LPpUQbz9g9Scv24oS13vQ0X4lA35unRBgRWM+G+5s=";
      }
      {
        name = "vue-vscode-snippets";
        publisher = "sdras";
        version = "3.1.1";
        sha256 = "sha256-ml/+i5YMsOnjJBxf/mX7ZzO48MQqGPM4OF2dAi/bfWM=";
      }
      {
        name = "vue-helper";
        publisher = "shenjiaolong";
        version = "2.4.7";
        sha256 = "sha256-OiTFd3+TugUFD1K+bw4sQQcC42tNInC6qoGNunV6x2Q=";
      }
      {
        name = "indenticator";
        publisher = "sirtori";
        version = "0.7.0";
        sha256 = "sha256-J5iNO6V5US+GFyNjNNA5u9H2pKPozWKjQWcLAhl+BjY=";
      }
      {
        name = "language-stylus";
        publisher = "sysoev";
        version = "1.16.0";
        sha256 = "sha256-9Wwlz6IXQiqevFSu3oZkKbyg+ix99JNpYKUSgOQpd6k=";
      }
      {
        name = "ayu";
        publisher = "teabyii";
        version = "1.0.5";
        sha256 = "sha256-+IFqgWliKr+qjBLmQlzF44XNbN7Br5a119v9WAnZOu4=";
      }
      {
        name = "cmake";
        publisher = "twxs";
        version = "0.0.17";
        sha256 = "sha256-CFiva1AO/oHpszbpd7lLtDzbv1Yi55yQOQPP/kCTH4Y=";
      }
      {
        name = "volar";
        publisher = "vue";
        version = "0.40.13";
        sha256 = "sha256-M14Zgb+8O6BrzdFDVJf9xuydYq1Me2tCdPn3fSATR0E=";
      }
    ];
  };
}
