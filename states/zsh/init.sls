{%- from "vars" import vars with context %}

zsh:
  pkg.installed

oh-my-zsh-clone:
  git.latest:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - rev: master
    - target: {{ vars.home_dir }}/.oh-my-zsh
    - depth: 1

zsh-zshrc:
  file.managed:
    - name: {{ vars.home_dir }}/.zshrc
    - source: salt://zsh/zshrc

zsh-set-default-shell:
  cmd.run:
    - name: chsh -s /usr/bin/zsh
