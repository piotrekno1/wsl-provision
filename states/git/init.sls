{%- from "vars" import vars with context %}

git:
    pkg.installed

gitconfig:
  file.managed:
    - name: {{ vars.home_dir }}/.gitconfig
    - source: salt:///git/gitconfig
    - template: jinja
    - context:
        email: {{vars.email}}
        firstname: {{vars.firstname}}
        lastname: {{vars.lastname}}
