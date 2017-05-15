{%- from "vars" import vars with context %}

python-ppa:
  pkgrepo.managed:
    - humanname: Python PPA
    - name: deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main
    - file: /etc/apt/sources.list.d/python.list
    - keyid: DB82666C
    - keyserver: keyserver.ubuntu.com

python-2.7-ppa:
  pkgrepo.managed:
    - humanname: Python 2.7 PPA
    - name: deb http://ppa.launchpad.net/fkrull/deadsnakes-2.7/ubuntu trusty main
    - file: /etc/apt/sources.list.d/python27.list
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

python2.7:
  pkg.installed:
    - require:
      - pkgrepo: python-2.7-ppa

python2.7-dev:
  pkg.installed:
    - require:
      - pkgrepo: python-2.7-ppa

python-pip:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa

python-tox:
  pkg.installed:
    - require:
      - pkgrepo: python-ppa
