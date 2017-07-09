{%- from "vars" import vars with context %}

zsh:
  pkg.installed


oh-my-zsh-clone:
  git.latest:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - rev: master
    - target: {{ vars.home_dir }}/.oh-my-zsh
    - depth: 1
    - force_reset: True

# Using this in .zshrc fixes terrible default shell syntax higlighting:
# https://medium.com/@Andreas_cmj/how-to-setup-a-nice-looking-terminal-with-wsl-in-windows-10-creators-update-2b468ed7c326
dircolors-solarized-clone:
  git.latest:
    - name: https://github.com/seebi/dircolors-solarized.git
    - rev: master
    - target: {{ vars.home_dir }}/.dircolors-solarized
    - depth: 1
    - force_reset: True

zsh-zshrc:
  file.managed:
    - name: {{ vars.home_dir }}/.zshrc
    - source: salt://zsh/zshrc

zsh-set-default-shell:
  cmd.run:
    - name: chsh -s /usr/bin/zsh
