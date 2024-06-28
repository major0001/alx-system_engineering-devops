# set the hard and soft nofiles to higher than 5 and 4  (65535)

exec{'increase-use-files-limits':
  command => 'sed -i "s/\\b5\\b/65535/g; s/\\b4\\b/65535/g" /etc/security/limits.conf',
  path    => '/usr/local/bin:/bin/'
}
