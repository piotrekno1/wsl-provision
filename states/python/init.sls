{%- from "vars" import vars with context %}

python-ppa:
  pkgrepo.managed:
    - humanname: Python PPA
    - name: deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu {{vars.ubuntu_version}} main
    - file: /etc/apt/sources.list.d/python.list
    - keyid: DB82666C
    - keyserver: keyserver.ubuntu.com

python:
  pkg.installed:
    - pkgs:
        - python3.6
        - python3.5
        - python2.7
    - require:
      - pkgrepo: python-ppa

python-dev:
  pkg.installed:
    - pkgs:
        - python3.6-dev
        - python3.5-dev
        - python2.7-dev

python-pip:
  pkg.installed:
    - pkgs:
        - python-pip
        - python3-pip
    - require:
      - pkgrepo: python-ppa

pip:
  pip.installed:
    - upgrade: True
    - require:
       - pkg: python-pip

ipython:
  pip.installed:
    - upgrade: True
    - require:
      - pkg: python-pip

mypy:
  pip.installed:
    - upgrade: True
    # This only works with pip3
    - bin_env: '/usr/bin/pip3'
    - require:
        - pkg: python-pip

python-tox:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

