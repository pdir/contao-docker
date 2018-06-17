<?php

echo "Retrieving Contao Version\n";
$currentContaoVersion = exec("/var/www/html/bin/console contao:version");
echo "Current Contao version: {$currentContaoVersion}\n";

echo "Preparing config\n";
copy("/var/www/html/data/config/localconfig.php", "/var/www/html/system/config/localconfig.php");
chmod("/var/www/html/system/config/localconfig.php", 0777);
passthru("chown www-data:www-data /var/www/html/system/config/localconfig.php");

if (!is_dir("/var/www/html/app/config")) {
    mkdir("/var/www/html/app/config/", 0777, true);
    chmod("/var/www/html/app/config/", 0777);
}
copy("/var/www/html/data/config/parameters.yml", "/var/www/html/app/config/parameters.yml");
chmod("/var/www/html/app/config/parameters.yml", 0777);
passthru("chown www-data:www-data /var/www/html/app/config/parameters.yml");

echo "Running contao tasks and clean cache before\n";
passthru("rm -fr /var/www/html/var/cache/*");
passthru("php bin/console contao:filesync");
passthru("php bin/console contao:symlinks");

echo "Cleaning cache finally again\n";
passthru("rm -fr /var/www/html/var/cache/*");