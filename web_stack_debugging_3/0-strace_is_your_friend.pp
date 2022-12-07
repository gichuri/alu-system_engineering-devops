# change phpp to php

exec{'change_to_php':
        command => 'sed -i s/class-wp-locale.phpp/class-wp-locale.php/g /var/www/html/wp-settings.php',
        provider => shell,
}
