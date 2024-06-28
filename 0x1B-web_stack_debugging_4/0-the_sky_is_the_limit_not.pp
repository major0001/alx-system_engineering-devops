# make an edit the ULIMIT feature of /etc/default/nginx
# increases the limit from15 to 4096

exec {'fix-ulimit-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin:/bin/'
}

#Restarting the nginx server

exec {'restart-nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
