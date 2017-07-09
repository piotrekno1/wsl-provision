heroku-ppa:
  pkgrepo.managed:
    - humanname: Heroku PPA
    - name: deb https://cli-assets.heroku.com/branches/stable/apt ./
    - file: /etc/apt/sources.list.d/heroku.list
    - key_url: https://cli-assets.heroku.com/apt/release.key

heroku:
  pkg.installed:
    - require:
      - pkgrepo: heroku-ppa
