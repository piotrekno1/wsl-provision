{%- from "vars" import vars with context %}

# Install docker for linux & connect it with remote Windows docker host (See zshrc).

extract-docker:
  archive.extracted:
    - name: {{vars.home_dir}}/bin/docker
    - source: https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz
    - if_missing: {{vars.home_dir}}/bin/docker
    - skip_verify: True
    - require:
      - pkgrepo: python-ppa


docker-compose:
    file.managed:
      - name: {{ vars.home_dir }}/bin/docker-compose/docker-compose
      - source: https://github.com/docker/compose/releases/download/1.12.0/docker-compose-Linux-x86_64
      - skip_verify: True
      - makedirs: True
      - require:
        - pkgrepo: python-ppa
