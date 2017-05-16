{%- from "vars" import vars with context %}

extract-golang:
  archive.extracted:
    - name: {{vars.home_dir}}/bin/golang
    - source: https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz
    - if_missing: {{vars.home_dir}}/bin/golang
    - skip_verify: True
