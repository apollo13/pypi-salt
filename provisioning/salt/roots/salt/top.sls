base:
  '*':
    - base.sanity
  'roles:pypi-mirror':
    - match: grain
    - pypi-mirror
    - firewall
  'roles:pypi':
    - match: grain
    - pypi
    - firewall

  'roles:postgresql_cluster':
    - match: grain
    - firewall
    - postgresql.cluster
  'roles:postgresql_pgpool':
    - match: grain
    - firewall
    - keepalived
    - postgresql.cluster.pgpool

  'roles:gluster_node':
    - match: grain
    - glusterfs.server
  'roles:gluster_client':
    - match: grain
    - glusterfs.client
