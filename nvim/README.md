# vim

## This is my vim setup!

First lets backup the previous setup for everyone that is needed:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim
```

Then I downloaded ripgrep for lovely telescope:
```bash
sudo apt-get install ripgrep
```

Then I used kick starter nvim to install it on my computer:

```bash
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

and ran it normally:
`nvim`

It installed bunch of shit on my nvim...

    ● cmp-nvim-lsp
    ● cmp-path
    ● cmp_luasnip
    ● Comment.nvim
    ● fidget.nvim
    ● friendly-snippets
    ● gitsigns.nvim
    ● indent-blankline.nvim
    ● lualine.nvim
    ● LuaSnip
    ● mason-lspconfig.nvim
    ● mason.nvim
    ● neodev.nvim
    ● nvim-cmp
    ● nvim-lspconfig
    ● nvim-treesitter
    ● nvim-treesitter-textobjects
    ● onedark.nvim
    ● plenary.nvim
    ● telescope-fzf-native.nvim
    ● telescope.nvim
    ● vim-fugitive
    ● vim-rhubarb
    ● vim-sleuth
    ● which-key.nvim

lets see what we can make of them:
coding -
    ● neodev.nvim (Show a util signeture)
telescope -  
    The best search and find
    ● telescope-fzf-native.nvim
    ● telescope.nvim
git -
    Some of the git stuff
    ● vim-fugitive -> Switched to LazyGit
    ● vim-sleuth (opens browser when using fugitive) -> Deleted because of LazyGit
formatting -
    Everything that changes stuff in my code
    ● vim-sleuth (recognize the tabstop auto)
LSP -
    All the necessary libraries to manage Language Server Protocols
    ● mason-lspconfig.nvim
    ● mason.nvim
Snippets -
    All the snippets that are needed
    ● LuaSnip
    ● cmp_luasnip
UI - 
    All UI related stuff
    ● lualine.nvim (The line that says INSERT/NORMAL...)
    ● onedark.nvim (Theme)
    ● fidget.nvim (Show toasts)
util -
    All the rest of the thing
    ● plenary.nvim (The util libraries for libraries)
    ● which-key.nvim (UI util to know what I'm pressing)

