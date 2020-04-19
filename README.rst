Neovim Configuration
====================

Personal configuration for Neovim.

To install, follow the steps:

1. Clone the repository into the neovim configuration folder:

   .. code:: bash

       git clone https://github.com/jonathf/nvim ~/.config/nvim

2. Use the python remote server, install a python virtual
   environment with a python instance version 3.6.1+:

   .. code:: bash

       python -m venv ~/.config/nvim/venv
       ~/config/nvim/venv/bin/pip install -U pip neovim jedi neovim-remote

3. Install plugging using [Vim-Plug](https://github.com/junegunn/vim-plug) from
   inside neovim:

   .. code:: vim

      :PlugInstall
