{ config, pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      coc-nvim
      coc-snippets
      coc-json
      coc-vimtex
      coc-pairs
      fzf-vim
      gruvbox
      markdown-preview-nvim
      material-vim
      nerdtree
      nord-vim
      ultisnips
      vim-airline
      vim-airline-themes
      vim-css-color
      vim-devicons
      vim-fugitive
      vim-gitgutter
      vim-snippets
      vim-startify
      vimtex
    ];

    extraConfig = ''
      " Basic stuff
      set nocompatible
      syntax on
      set encoding=utf-8
      set number relativenumber " Number of current line + relative number of other lines
      set mouse=a " Be a heretic and use mouse support :)

      let g:startify_custom_header=[
          \ '    __     __ ___  __  __',
          \ '    \ \   / /|_ _||  \/  |',
          \ '     \ \ / /  | | | |\/| |',
          \ '      \ V /   | | | |  | |',
          \ '       \_/   |___||_|  |_|',
          \ ]





      " Search settings
      set hlsearch " Highlights searched elements
      set ignorecase
      set smartcase " Only case-sensitive when search includes upper-case characters
      set incsearch " Start searching as you type

      " Tab sizes
      set tabstop=2
      set shiftwidth=2
      set expandtab

      " Set colorscheme
      if filereadable(expand('~/.config/nvim/colors.vim'))
        source $HOME/.config/nvim/colors.vim
      endif

      " Transparency
      highlight Normal guibg=none
      highlight NonText guibg=none

      " General config
      let g:tex_flavor = "latex"
      let g:vimtex_view_general_viewer = 'zathura'
        let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'hooks' : [],
            \ 'options' : [
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \   '-shell-escape'
            \ ],
            \}
      
      " Airline config
      let g:airline_theme='material'
      let g:airline#extensions#branch#enabled = 1
      let g:airline_powerline_fonts = 1
      let g:airline#extensions#nerdtree_status = 1
      let g:airline#extensions#tabline#enabled = 1
      
      " UltiSnippets
      let g:UltiSnipsExpandTrigger="<c-q>"
      let g:UltiSnipsJumpForwardTrigger = '<c-q>'
      
      " Some keybinds
      map <C-p> :FZF<enter>
      
      " Use tab for trigger completion with characters ahead and navigate.
      " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
      inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<TAB>" :
            \ coc#refresh()
      inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
      
      " Enter -> accept snippet
      inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() : 
                                               \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
      
      function! CheckBackspace() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
      endfunction
      
      " if no args are passed, Startify is started
      autocmd VimEnter *
                  \   if !argc()
                  \ |   Startify
                  \ | endif
    '';
  };
}
