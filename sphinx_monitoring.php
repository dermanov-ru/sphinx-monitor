<?php
/*
 * Скрипт для проверка работоспособоности сфинкса через веб пинганатор.
 * 1. install composer
 * 2. php composer.phar require neutron/sphinxsearch-api
 * */

ini_set("display_errors", true);

require __DIR__ . "/vendor/autoload.php";

$cl = new SphinxClient();
$cl->SetServer( "127.0.0.1", 9312 );
$cl->SetMatchMode( SPH_MATCH_EXTENDED  );
$cl->SetRankingMode ( SPH_RANK_SPH04 );

// Execute the query
$q = 'проверка связи';
$searchresults = $cl->Query($q, 'bitrix' );

if (strpos($cl->_error, "connection") !== false) {
    echo "error";
} else {
    echo "ok";
}