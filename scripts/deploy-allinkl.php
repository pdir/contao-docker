<?php

echo "Deploy to ALLINKL\n";

# @todo use https://github.com/waza-ari/kasapi-php

// Logindaten

$kas_user = getenv('KAS_USERNAME');  // KAS-Logon
$kas_pass = getenv('KAS_PASSWORD');  // KAS-Passwort
$session_lifetime = 600;  // Gültigkeit des Tokens in Sek. bis zur neuen Authentifizierung
$session_update_lifetime = 'Y'; // bei N läuft die Session nach <$session_lifetime> Sekunden ab, bei Y verlängert sich die Session mit jeder Benutzung

try {
    $SoapLogon = new SoapClient('https://kasapi.kasserver.com/soap/wsdl/KasAuth.wsdl');
    $CredentialToken = $SoapLogon->KasAuth(json_encode(array(
        'KasUser' => $kas_user,
        'KasAuthType' => 'sha1',
        'KasPassword' => sha1($kas_pass),
        'SessionLifeTime' => $session_lifetime,
        'SessionUpdateLifeTime' => $session_update_lifetime
    )));

} // Fehler abfangen und ausgeben
catch (SoapFault $fault) {
    trigger_error("Fehlernummer: {$fault->faultcode},
                    Fehlermeldung: {$fault->faultstring},
                    Verursacher: {$fault->faultactor},
                    Details: {$fault->detail}", E_USER_ERROR);
}

echo "Add subdomain\n";
try {
    // Parameter für die API-Funktion
    $Params = array(
        'subdomain_name' => getenv('KAS_SUBDOMAIN_NAME'),
        'domain_name' => getenv('KAS_DOMAIN_NAME'),
        'subdomain_path' => getenv('KAS_DEV_PATH') . getenv('PROJECT_NAME'),
        'ssl_proxy' => 'Y',
        'redirect_status' => '0',
        //'php_version' => 'cgi|7.0'
    );

    var_dump($Params);

    $SoapRequest = new SoapClient('https://kasapi.kasserver.com/soap/wsdl/KasApi.wsdl');
    $req = $SoapRequest->KasApi(json_encode(array(
        'KasUser' => $kas_user,                // KAS-User
        'KasAuthType' => 'session',             // Auth per Sessiontoken
        'KasAuthData' => $CredentialToken,      // Auth-Token
        'KasRequestType' => 'add_subdomain',      // API-Funktion
        'KasRequestParams' => $Params          // Parameter an die API-Funktion
    )));

} // Fehler abfangen und ausgeben
catch (SoapFault $fault) {
    trigger_error(" Fehlernummer: {$fault->faultcode},
                    Fehlermeldung: {$fault->faultstring},
                    Verursacher: {$fault->faultactor},
                    Details: {$fault->detail}", E_USER_ERROR);
}

// echo "<pre>"; print_r($req); echo "</pre";

if($req['Response']['ReturnString'] === TRUE)
    echo "Subdomain " . $req['Response']['ReturnInfo']. " wurde angelegt.\n";

echo "Kopiere Daten\n";

// exec("rsync -rva /var/www/html/data ".getenv('FTP_USER')."@".getenv('FTP_HOST').":" . getenv('KAS_DEV_PATH') . getenv('PROJECT_NAME'));

/*
$connection = ftp_connect(getenv('FTP_HOST'));
$login = ftp_login($connection, getenv('FTP_USER'), getenv('FTP_PASS'));
if (!$connection || !$login) { echo('FTP Connection attempt failed!'); }
$upload = ftp_put($connection, getenv('KAS_DEV_PATH') . getenv('PROJECT_NAME'), '/var/www/html/data/demo',FTP_BINARY);
if (!$upload) { echo "FTP upload failed!\n"; }
ftp_close($connection);*/


echo "Kopiere Datenbank\n";

echo "Installiere Contao\n";


