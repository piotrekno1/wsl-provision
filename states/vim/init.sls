{%- from "vars" import vars with context %}

vim:
    pkg.installed

ultimate-vim-clone:
  git.latest:
    - name: https://github.com/amix/vimrc.git
    - rev: master
    - target: {{ vars.home_dir }}/.vim_runtime
    - depth: 1
  cmd.run:
  - name: sh ~/.vim_runtime/install_awesome_vimrc.sh
