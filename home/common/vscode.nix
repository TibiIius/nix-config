{ config, pkgs, lib, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
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
        name = "nord-visual-studio-code";
        publisher = "arcticicestudio";
        version = "0.19.0";
        sha256 = "05bmzrmkw9syv2wxqlfddc3phjads6ql2grknws85fcqzqbfl1kb";
      }
      {
        name = "nix-env-selector";
        publisher = "arrterian";
        version = "1.0.9";
        sha256 = "0kdfhkdkffr3cdxmj7llb9g3wqpm13ml75rpkwlg1y0pkxcnlk2f";
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
        name = "path-intellisense";
        publisher = "christian-kohler";
        version = "2.8.1";
        sha256 = "1j7q4mzj173sl6xl3zjw40hnqvyqsrsczakmv63066k4k0rb6clm";
      }
      {
        name = "vscode-github-actions";
        publisher = "cschleiden";
        version = "0.24.4";
        sha256 = "0371rms5cq2s7kfbzx078bfp7lcyq3lnxp1hrw1wy5igz94lvicp";
      }
      {
        name = "vscode-markdownlint";
        publisher = "DavidAnson";
        version = "0.48.1";
        sha256 = "0npmvaw734r8pk17cz8vccxwxnbpk076ickndkd9gymcyqd5jfnx";
      }
      {
        name = "vscode-eslint";
        publisher = "dbaeumer";
        version = "2.2.6";
        sha256 = "0m16wi8slyj09r1y5qin9xsw4pyhfk3mj6rs5ghydfnppb45w9np";
      }
      {
        name = "vscode-deno";
        publisher = "denoland";
        version = "3.14.0";
        sha256 = "1m2rpm8pyzw4d3mh8zhdd7ynkc2qcygbfnl9sn0misi311a7bx2a";
      }
      {
        name = "gitlens";
        publisher = "eamodio";
        version = "2022.10.2605";
        sha256 = "1kz7v9w10zd6dnhbxavcy2kns27p3nh18aq181ch5hvkbgn3140d";
      }
      {
        name = "vscode-npm-script";
        publisher = "eg2";
        version = "0.3.29";
        sha256 = "10jpc4w2rzaq86c2l432z1d76d3v7scdw515y6hbk3q12sdfv84k";
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
        name = "prettier-vscode";
        publisher = "esbenp";
        version = "9.9.0";
        sha256 = "1zba2k51ylpzz47r74kdr2adp669xw19a866gw0wndcigkhcrgk2";
      }
      {
        name = "vue-inline-template";
        publisher = "faisalhakim47";
        version = "1.0.1";
        sha256 = "0dd603yx8rihfm9j0f30qsf0ql0zbwii21xxr94gcacrb0y5m62f";
      }
      {
        name = "auto-rename-tag";
        publisher = "formulahendry";
        version = "0.1.10";
        sha256 = "0nyilwfs2kbf8v3v9njx1s7ppdp1472yhimiaja0c3v7piwrcymr";
      }
      {
        name = "vscode-pull-request-github";
        publisher = "GitHub";
        version = "0.53.2022102820";
        sha256 = "0n867cbmhhsmz0d0jzyy144jsa9ywgzzr9j713cwc62ac9czyizx";
      }
      {
        name = "gc-excelviewer";
        publisher = "GrapeCity";
        version = "4.2.56";
        sha256 = "1fcy4q6y8z0nzyi473dmisc7s2s6710vkx9krjb8n3lgmb2s9cln";
      }
      {
        name = "todo-tree";
        publisher = "Gruntfuggly";
        version = "0.0.219";
        sha256 = "1inbfi3mlsqkkgsp44qkj80hb87f44g23cahl5pjh8985hapcpw5";
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
        name = "output-colorizer";
        publisher = "IBM";
        version = "0.1.2";
        sha256 = "0i9kpnlk3naycc7k8gmcxas3s06d67wxr3nnyv5hxmsnsx5sfvb7";
      }
      {
        name = "nix-ide";
        publisher = "jnoortheen";
        version = "0.2.1";
        sha256 = "0bibb3r4cb7chnx6vpyl41ig12pc0cbg0sb8f2khs52c71nk4bn8";
      }
      {
        name = "pandoc-markdown-preview";
        publisher = "kzvi";
        version = "0.4.1";
        sha256 = "0pniamj5s2ixq71nryvzz413qwvh2vbgvyr91l5wzbaanbnx9bw6";
      }
      {
        name = "vscode-clangd";
        publisher = "llvm-vs-code-extensions";
        version = "0.1.23";
        sha256 = "125incws4n688irqii3s2a1cznj0kvkbhv3sa8585chj5g4zvmfy";
      }
      {
        name = "materialdesignicons-intellisense";
        publisher = "lukas-tr";
        version = "4.1.0";
        sha256 = "04nz0xslvkf58wk25a37n8cqa0sxnxga044nlpjvsdjpyzcx85l7";
      }
      {
        name = "marp-vscode";
        publisher = "marp-team";
        version = "2.3.0";
        sha256 = "0w6ry5k6qxmgn5mzjhpy7030g8pjzikszzjgrnq91la06qqp61xi";
      }
      {
        name = "markdown-link-updater";
        publisher = "mathiassoeholm";
        version = "2.3.0";
        sha256 = "1ndydslqpzwhc6imw0yq2xn9gaiinr1l3wa60g60qgimhyrhjslp";
      }
      {
        name = "vscode-docker";
        publisher = "ms-azuretools";
        version = "1.22.2";
        sha256 = "13scns5iazzsjx8rli311ym2z8i8f4nvbcd5w8hqj5z0rzsds6xi";
      }
      {
        name = "csharp";
        publisher = "ms-dotnettools";
        version = "1.25.0";
        sha256 = "1cqqjg8q6v56b19aabs9w1kxly457mpm0akbn5mis9nd1mrdmydl";
      }
      {
        name = "python";
        publisher = "ms-python";
        version = "2022.17.13011006";
        sha256 = "1wq7k2855mxxb9d9d1v2ffhiyrddzgjp04zvzb5jkh4ar9fxp6vz";
      }
      {
        name = "vscode-pylance";
        publisher = "ms-python";
        version = "2022.10.41";
        sha256 = "1k89ygrffc7ljgkmh75y8mxc70jfip7v7nmsrizaly2hzicxsid5";
      }
      {
        name = "jupyter";
        publisher = "ms-toolsai";
        version = "2022.10.1103032004";
        sha256 = "1z37c9a5xf7h8vzai37gz2rc3h1nij5j8dfsrssym5hpbddjpzrv";
      }
      {
        name = "jupyter-keymap";
        publisher = "ms-toolsai";
        version = "1.0.0";
        sha256 = "0wkwllghadil9hk6zamh9brhgn539yhz6dlr97bzf9szyd36dzv8";
      }
      {
        name = "jupyter-renderers";
        publisher = "ms-toolsai";
        version = "1.0.12";
        sha256 = "12l5z60kpz3nx77l8ck6a6w4qdzyz3xkn6k9670r30w365q9lf0z";
      }
      {
        name = "remote-ssh";
        publisher = "ms-vscode-remote";
        version = "0.90.1";
        sha256 = "19lrw5107d1ji80g6pm98213gfsryg6qdl5y5f360dny31p38pn4";
      }
      {
        name = "remote-ssh-edit";
        publisher = "ms-vscode-remote";
        version = "0.84.0";
        sha256 = "0rw2klz1f4sy1xzwg4bilcm2sjk0lxdfh9ly3f4kbl8a5xccfy6z";
      }
      {
        name = "cmake-tools";
        publisher = "ms-vscode";
        version = "1.13.20";
        sha256 = "02xl4rgf0ial987hnaqx45sgbzm95ncndchsq0rw24xgkw72nbym";
      }
      {
        name = "cpptools";
        publisher = "ms-vscode";
        version = "1.13.3";
        sha256 = "sha256-BxBOFlkRrk+QOba5BaNiRnkfJlHMMU61bBC6g4WcZmQ=";
      }
      {
        name = "makefile-tools";
        publisher = "ms-vscode";
        version = "0.6.0";
        sha256 = "07zagq5ib9hd3w67yk2g728vypr4qazw0g9dyd5bax21shnmppa9";
      }
      {
        name = "vsliveshare";
        publisher = "ms-vsliveshare";
        version = "1.0.5750";
        sha256 = "1sxsg5ghcszx10jbcs1rw9m11wy2zmgxf85rwv8gv282rjcwb32a";
      }
      {
        name = "pandocciter";
        publisher = "notZaki";
        version = "0.9.3";
        sha256 = "1g1887qy8wdv6vsj9lrlik41hl7fy7k1a71r4whqi5lvzrl2zkfd";
      }
      {
        name = "vetur";
        publisher = "octref";
        version = "0.36.0";
        sha256 = "14ym7i858j5q4sf0wsr78c6sv8dmgw4i4ah4p22hgx9n89i27k0h";
      }
      {
        name = "material-icon-theme";
        publisher = "PKief";
        version = "4.21.0";
        sha256 = "15bilv7ck3538dxkjnsqwgw3y1dqbyd9y9qhghysj4fxc367h0hk";
      }
      {
        name = "platformio-ide";
        publisher = "platformio";
        version = "2.5.4";
        sha256 = "sha256-/vBdZ6Mu1KlF+glqp5CNt9WeK1ECqfaivCnK8TisChg=";
      }
      {
        name = "prisma";
        publisher = "Prisma";
        version = "4.5.0";
        sha256 = "1j72mif61rc8gyvnym1516z8crwa58hr526qjk8vcd2g93c7dwsf";
      }
      {
        name = "vscode-commons";
        publisher = "redhat";
        version = "0.0.6";
        sha256 = "1b8nlhbrsg3kj27f1kgj8n5ak438lcfq5v5zlgf1hzisnhmcda5n";
      }
      {
        name = "vscode-yaml";
        publisher = "redhat";
        version = "1.11.10112022";
        sha256 = "0i53n9whcfpds9496r4pa27j3zmd4jc1kpkf4m4rfxzswwngg47x";
      }
      {
        name = "LiveServer";
        publisher = "ritwickdey";
        version = "5.7.9";
        sha256 = "0dycc18i1zn20zgh5ymqbi1nmg2an49ndf9r2w6dr5lx8d49hh63";
      }
      {
        name = "synthwave-vscode";
        publisher = "RobbOwen";
        version = "0.1.14";
        sha256 = "0d9c18ci1pgj1qxm8xhdw6rp5gn135l1rvmd591gr3bsrmcf5wj7";
      }
      {
        name = "rust-analyzer";
        publisher = "rust-lang";
        version = "0.4.1263";
        sha256 = "sha256-eLMzPu06n7g3MDCXl8ib9OjJnktmHs6E1goSFRvlt7g=";
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
        name = "crates";
        publisher = "serayuzgur";
        version = "0.5.10";
        sha256 = "1dbhd6xbawbnf9p090lpmn8i5gg1f7y8xk2whc9zhg4432kdv3vd";
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
        name = "svelte-vscode";
        publisher = "svelte";
        version = "106.2.0";
        sha256 = "04l8md2xpzanh84hpmpa83pm17rwg3qxnxnqg8kn1vhl4rzc7cjh";
      }
      {
        name = "language-stylus";
        publisher = "sysoev";
        version = "1.16.0";
        sha256 = "1abp57j804m5c1lr7x3x5kxa1g19cj3dxbjlpjg2lhhplb7jav7m";
      }
      {
        name = "even-better-toml";
        publisher = "tamasfe";
        version = "0.18.3";
        sha256 = "1krx857sw4mlshhybv390ivv7ykb6z93cyphjv5k9ripb4865g15";
      }
      {
        name = "ayu";
        publisher = "teabyii";
        version = "1.0.5";
        sha256 = "1visv44mizfvsysrdby1vrncv1g3qmf45rhjijmbyak2d60nm0gq";
      }
      {
        name = "pdf";
        publisher = "tomoki1207";
        version = "1.2.0";
        sha256 = "1bcj546bp0w4yndd0qxwr8grhiwjd1jvf33jgmpm0j96y34vcszz";
      }
      {
        name = "cmake";
        publisher = "twxs";
        version = "0.0.17";
        sha256 = "11hzjd0gxkq37689rrr2aszxng5l9fwpgs9nnglq3zhfa1msyn08";
      }
      {
        name = "errorlens";
        publisher = "usernamehw";
        version = "3.6.0";
        sha256 = "1sv8vlzmynbz20vmv901nrg12wcmsg5i9pm6mqq32rlgb7rw3p50";
      }
      {
        name = "vscode-lldb";
        publisher = "vadimcn";
        version = "1.8.1";
        sha256 = "09396sha8cx7cq99nywrg30m5sijzhk8hxywncbjg7cgid5c9vjj";
      }
      {
        name = "vim";
        publisher = "vscodevim";
        version = "1.24.1";
        sha256 = "00gq6mqqwqipc6d7di2x9mmi1lya11vhkkww9563avchavczb9sv";
      }
      {
        name = "volar";
        publisher = "Vue";
        version = "1.0.9";
        sha256 = "14yf69fjagw1bjh6q846lsil1frhsyhc6s0y1fgkji7xhq8fmnsf";
      }
      {
        name = "markdown-all-in-one";
        publisher = "yzhang";
        version = "3.4.4";
        sha256 = "0jw38vf3pzplw5dnhs8b9fxqc4z5b198wjw3y3ll14xjzxc5ymns";
      }
      {
        name = "material-theme";
        publisher = "zhuangtongfa";
        version = "3.15.6";
        sha256 = "0c6dwy6z3980hbf9njf8b8bvd602q2d6bflkrwqd93n9c0fa4n1d";
      }
    ];
  };
}
