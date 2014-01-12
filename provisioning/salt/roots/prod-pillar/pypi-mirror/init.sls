
firewall:
  http:
    port: 80
  https:
    port: 443

bandersnatch:
  pypi:
    mirror:
      directory: /data/pypi-mirror
      master: https://pypi.python.org
      timeout: 10
      workers: 20
      stop-on-error: false
      delete-packages: true
    statistics:
      access-log-pattern: /var/log/nginx/pypi-mirror/access*.log
    server_names:
      - mirror0.pypi.io
      - pypi.python.org
  testpypi:
    mirror:
      directory: /data/testpypi-mirror
      master: https://testpypi.python.org
      timeout: 10
      workers: 20
      stop-on-error: false
      delete-packages: true
    statistics:
      access-log-pattern: /var/log/nginx/testpypi-mirror/access*.log
    server_names:
      - testpypi.python.org
