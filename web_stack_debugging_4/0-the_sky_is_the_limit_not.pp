# change ulimit to 4096

exec{'change_ulimit':
    command  => 'sed -i s/ULIMIT="-n 15"/ ULIMIT="-n 4096"/g /etc/default/nginx'
    provider => shell,
}
# restart nginx
service{'nginx':
    restart  => 'nginx',
}
