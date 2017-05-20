{%- from "vars" import vars with context %}

python-ppa:
  pkgrepo.managed:
    - humanname: Python PPA
    - name: deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu {{vars.ubuntu_version}} main
    - file: /etc/apt/sources.list.d/python.list
    - keyid: DB82666C
    - keyserver: keyserver.ubuntu.com

python3.6:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python3.6-dev:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python3.5:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python3.5-dev:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python2.7-dev:
  pkg.installed

python3-pip:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python-pip:
  pkg.installed:
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

python-tox:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa
