# change number of open files

exec {'inc_file_limit':
    command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/g" /etc/default/nginx',
    provider => shell,
}
exec {'service_nginx_restart':
    command  => 'sudo service nginx restart',
    provider => shell,
}
