<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2015 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Thu, 26 Nov 2015 17:12:30 GMT
 */

if ( ! defined( 'NV_MAINFILE' ) )
{
	die( 'Stop!!!' );
}

$db_config['dbhost'] = '127.0.0.1';
$db_config['dbport'] = '';
$db_config['dbname'] = 'thcsgiaothanh';
$db_config['dbsystem'] = 'thcsgiaothanh';
$db_config['dbuname'] = 'root';
$db_config['dbpass'] = '';
$db_config['dbtype'] = 'mysql';
$db_config['collation'] = 'utf8_general_ci';
$db_config['persistent'] = false;
$db_config['prefix'] = 'gt';

$global_config['idsite'] = 0;
$global_config['sitekey'] = 'ae1b1d5a32657fc22baa3cf99257696d';// Do not change sitekey!
$global_config['hashprefix'] = '{SSHA}';