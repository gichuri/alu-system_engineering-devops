# change number of open files

exec {'inc_file_limit':
        command => 'sed -i s/ULIMIT="-n 15"/ULIMIT="-n 4096"/g /etc/default/nginx',
        provider => shell,
}
service{'nginx':
        restart => 'nginx',
}
