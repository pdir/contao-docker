<?php

echo "Retrieving Contao Version\n";
$currentContaoVersion = exec("/var/www/html/bin/console contao:version");
echo "Current Contao version: {$currentContaoVersion}\n";

// We have different datasets for some contao versions. Find out which one is needed.
// There is a Tool for comparing SemVersions https://github.com/composer/semver/
// But we try to stay single file
$versionToUseForDemoData = "4.4";
$comparableContaoVersion = str_replace(".", "", $currentContaoVersion);
// still not good, if we have a high bugfix / patch number we just cut it. Otherwise 4.5.11 would be higher rated than
// 6.0.0 . A bugfix release should not affect the demo data version so we just slice it out and make it finally an int
$comparableContaoVersion = (int)substr($comparableContaoVersion, 0, 3);
// Select the demo data version to use. We try to stay in line with Contao Versions
if ($comparableContaoVersion >= 450) {
    $versionToUseForDemoData = "4.5";
}
echo "Demo data version: {$versionToUseForDemoData}\n";

echo "Setting up db with demo data\n";

try {
    $dsn = "mysql:host=mysql";
    $pdo = new PDO($dsn, "root", getenv('DEFAULT_PASSWORD'));

    $pdo->query("CREATE DATABASE IF NOT EXISTS " . getenv('PROJECT_NAME'));

    $pdo->query("USE " . getenv('PROJECT_NAME'));

    $demoSql = file_get_contents("/var/www/html/data/demo/contao-demo-{$versionToUseForDemoData}.sql");
    $pdo->exec($demoSql);


} catch (PDOException $e) {
    echo "Db Error:\n {$e->getMessage()}\n\n";
}

passthru("chown -R www-data:www-data /tmp");

echo "Installing media files\n";
passthru("cp -r /var/www/html/data/demo/files/* /var/www/html/files/");

echo "Setting permissions\n";
passthru("chown -R www-data:www-data /var/www/html/files/contaodemo");

echo "Running contao tasks and clean cache before\n";
passthru("rm -fr /var/www/html/var/cache/*");
passthru("php bin/console contao:filesync");
passthru("php bin/console contao:symlinks");

echo "Cleaning cache finally again\n";
passthru("rm -fr /var/www/html/var/cache/*");