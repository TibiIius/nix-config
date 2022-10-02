{ config, pkgs, lib, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; with pkgs.vscode-marketplace; [
      aaron-bond.better-comments
      akamud.vscode-theme-onelight
      arcticicestudio.nord-visual-studio-code
      arrterian.nix-env-selector
      atomiks.moonlight
      be5invis.vscode-icontheme-nomo-dark
      christian-kohler.path-intellisense
      cschleiden.vscode-github-actions
      davidanson.vscode-markdownlint
      dbaeumer.vscode-eslint
      denoland.vscode-deno
      dsznajder.es7-react-js-snippets
      eamodio.gitlens
      eg2.vscode-npm-script
      emeraldwalk.RunOnSave
      enkia.tokyo-night
      equinusocio.vsc-community-material-theme
      equinusocio.vsc-material-theme
      equinusocio.vsc-material-theme-icons
      esbenp.prettier-vscode
      faisalhakim47.vue-inline-template
      formulahendry.auto-rename-tag
      github.vscode-pull-request-github
      grapecity.gc-excelviewer
      gruntfuggly.todo-tree
      guyutongxue.cpp-reference
      hancel.markdown-image
      ibm.output-colorizer
      jnoortheen.nix-ide
      kzvi.pandoc-markdown-preview
      llvm-vs-code-extensions.vscode-clangd
      lukas-tr.materialdesignicons-intellisense
      marp-team.marp-vscode
      mathiassoeholm.markdown-link-updater
      ms-azuretools.vscode-docker
      ms-dotnettools.csharp
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-vscode-remote.remote-ssh
      ms-vscode-remote.remote-ssh-edit
      ms-vscode.cmake-tools
      ms-vscode.cpptools
      ms-vscode.makefile-tools
      ms-vsliveshare.vsliveshare
      notzaki.pandocciter
      octref.vetur
      pkief.material-icon-theme
      platformio.platformio-ide
      prisma.prisma
      rangav.vscode-thunder-client
      redhat.vscode-commons
      redhat.vscode-yaml
      ritwickdey.liveserver
      robbowen.synthwave-vscode
      rust-lang.rust-analyzer
      sainnhe.gruvbox-material
      samrapdev.outrun
      sdras.night-owl
      sdras.vue-vscode-snippets
      serayuzgur.crates
      shenjiaolong.vue-helper
      silofy.hackthebox
      sirtori.indenticator
      svelte.svelte-vscode
      sysoev.language-stylus
      tamasfe.even-better-toml
      teabyii.ayu
      tomoki1207.pdf
      twxs.cmake
      usernamehw.errorlens
      vadimcn.vscode-lldb
      vscodevim.vim
      vue.volar
      yzhang.markdown-all-in-one
      zhuangtongfa.material-theme
    ];
  };
}
