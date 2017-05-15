{%- from "vars" import vars with context %}

extract_docker:
  archive.extracted:
    - name: {{vars.home_dir}}/bin/docker
    - source: https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz
    - user: {{vars.user}}
    - group: {{vars.user}}
    - if_missing: {{vars.home_dir}}/bin/docker
    - skip_verify: True
