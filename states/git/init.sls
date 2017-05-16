{%- from "vars" import vars with context %}

git:
    pkg.installed

gitconfig:
  file.managed:
    - name: {{ vars.home_dir }}/.gitconfig
    - source: salt:///git/gitconfig
