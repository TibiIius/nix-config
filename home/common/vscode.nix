{ config, pkgs-unstable, lib, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs-unstable.vscode;
    extensions = with pkgs-unstable.vscode-extensions; [
      matklad.rust-analyzer
      arcticicestudio.nord-visual-studio-code
      arrterian.nix-env-selector
      asvetliakov.vscode-neovim
      christian-kohler.path-intellisense
      davidanson.vscode-markdownlint
      dbaeumer.vscode-eslint
      denoland.vscode-deno
      eamodio.gitlens
      eg2.vscode-npm-script
      esbenp.prettier-vscode
      formulahendry.auto-rename-tag
      github.copilot
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
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-vscode-remote.remote-ssh
      ms-vscode.cmake-tools
      ms-vscode.cpptools
      ms-vscode.makefile-tools
      ms-vsliveshare.vsliveshare
      octref.vetur
      pkief.material-icon-theme
      prisma.prisma
      redhat.vscode-yaml
      ritwickdey.liveserver
      serayuzgur.crates
      svelte.svelte-vscode
      tamasfe.even-better-toml
      tomoki1207.pdf
      twxs.cmake
      usernamehw.errorlens
      vadimcn.vscode-lldb
      yzhang.markdown-all-in-one
      zhuangtongfa.material-theme
    ] ++ pkgs-unstable.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "better-comments";
        publisher = "aaron-bond";
        version = "3.0.2";
        sha256 = "15w1ixvp6vn9ng6mmcmv9ch0ngx8m85i1yabxdfn6zx3ypq802c5";
      }
      {
        name = "vscode-theme-onelight";
        publisher = "akamud";
        version = "2.3.0";
        sha256 = "198fhna68aqpmln0wvjwqyvfznjjyp9ykar1b2zjhc2id6rz8c09";
      }
      {
        name = "moonlight";
        publisher = "atomiks";
        version = "0.10.6";
        sha256 = "1b56r3ninzmivvnqdxzzy79iygc2wxlmbawfxwl46rfnnbdbyfyq";
      }
      {
        name = "vscode-icontheme-nomo-dark";
        publisher = "be5invis";
        version = "1.3.6";
        sha256 = "1l4s07z546z2bknq7dd77yc2jg701wa5i1d2rhzgbs1frgcsck0w";
      }
      {
        name = "vscode-github-actions";
        publisher = "cschleiden";
        version = "0.24.4";
        sha256 = "0371rms5cq2s7kfbzx078bfp7lcyq3lnxp1hrw1wy5igz94lvicp";
      }
      {
        name = "RunOnSave";
        publisher = "emeraldwalk";
        version = "0.2.0";
        sha256 = "1n7pblhbkkmznq9nanybfkwskibvfi4a11l9wvdpqd1765nvvycw";
      }
      {
        name = "tokyo-night";
        publisher = "enkia";
        version = "0.9.4";
        sha256 = "0v1hkv8smwp64c0danrln39h0lgqa2dwiiy45rx29s9qmq3j9am4";
      }
      {
        name = "vsc-material-theme";
        publisher = "Equinusocio";
        version = "33.5.0";
        sha256 = "1pr98mx7hji8jlm6ppac693ivbcpybh043w2z8sa3f49v7pksnrf";
      }
      {
        name = "vsc-material-theme-icons";
        publisher = "equinusocio";
        version = "2.4.0";
        sha256 = "0grqsb6snj8817saialdgx0ilblky5jw4i8yxaf8nymiysywzkyq";
      }
      {
        name = "vue-inline-template";
        publisher = "faisalhakim47";
        version = "1.0.1";
        sha256 = "0dd603yx8rihfm9j0f30qsf0ql0zbwii21xxr94gcacrb0y5m62f";
      }
      {
        name = "cpp-reference";
        publisher = "Guyutongxue";
        version = "0.2.2";
        sha256 = "1wb78ky09qpminzadyij1pfgkp8yji7vhgjsix0jq7d4npxwgzq4";
      }
      {
        name = "markdown-image";
        publisher = "hancel";
        version = "1.1.22";
        sha256 = "10hc7xr5zbrs1h1m437gilgwj32plj4dj1wk5sngmacwbcl3h96n";
      }
      {
        name = "pandoc-markdown-preview";
        publisher = "kzvi";
        version = "0.4.1";
        sha256 = "0pniamj5s2ixq71nryvzz413qwvh2vbgvyr91l5wzbaanbnx9bw6";
      }
      {
        name = "materialdesignicons-intellisense";
        publisher = "lukas-tr";
        version = "4.1.0";
        sha256 = "04nz0xslvkf58wk25a37n8cqa0sxnxga044nlpjvsdjpyzcx85l7";
      }
      {
        name = "markdown-link-updater";
        publisher = "mathiassoeholm";
        version = "2.3.0";
        sha256 = "1ndydslqpzwhc6imw0yq2xn9gaiinr1l3wa60g60qgimhyrhjslp";
      }
      {
        name = "remote-ssh-edit";
        publisher = "ms-vscode-remote";
        version = "0.84.0";
        sha256 = "0rw2klz1f4sy1xzwg4bilcm2sjk0lxdfh9ly3f4kbl8a5xccfy6z";
      }
      {
        name = "pandocciter";
        publisher = "notZaki";
        version = "0.9.3";
        sha256 = "1g1887qy8wdv6vsj9lrlik41hl7fy7k1a71r4whqi5lvzrl2zkfd";
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
        sha256 = "1b8nlhbrsg3kj27f1kgj8n5ak438lcfq5v5zlgf1hzisnhmcda5n";
      }
      {
        name = "synthwave-vscode";
        publisher = "RobbOwen";
        version = "0.1.14";
        sha256 = "0d9c18ci1pgj1qxm8xhdw6rp5gn135l1rvmd591gr3bsrmcf5wj7";
      }
      {
        name = "outrun";
        publisher = "samrapdev";
        version = "0.2.2";
        sha256 = "16zvhv7mh48q8jkrpps0i5gk9x6ynn2f5xnb94yxikqv8jjwyhkp";
      }
      {
        name = "vue-vscode-snippets";
        publisher = "sdras";
        version = "3.1.1";
        sha256 = "0qvxvcph57ax70wg661aqkqbhcv7zdjzwpqw4kiykc0cjs5zwpws";
      }
      {
        name = "vue-helper";
        publisher = "shenjiaolong";
        version = "2.4.7";
        sha256 = "0r67g9svm3c1max708jddgih41s15h76zgjj1w2hbflkgxvwa91s";
      }
      {
        name = "indenticator";
        publisher = "SirTori";
        version = "0.7.0";
        sha256 = "0dh6gqch42v786in5kg8lfjgdldv77838qr32y32ylbrllxqv617";
      }
      {
        name = "language-stylus";
        publisher = "sysoev";
        version = "1.16.0";
        sha256 = "1abp57j804m5c1lr7x3x5kxa1g19cj3dxbjlpjg2lhhplb7jav7m";
      }
      {
        name = "ayu";
        publisher = "teabyii";
        version = "1.0.5";
        sha256 = "1visv44mizfvsysrdby1vrncv1g3qmf45rhjijmbyak2d60nm0gq";
      }
      {
        name = "volar";
        publisher = "Vue";
        version = "1.0.13";
        sha256 = "sha256-PCWJ+d7sCPIpwKrnutLYAuhCVjJX8tL62l0+tQC2mTY=";
      }
    ];
  };
}
