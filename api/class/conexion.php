<?php
class Conexion extends PDO
{
    public function __construct($file='config.ini'){
        
        if (!$settings = parse_ini_file($file, TRUE)) throw new exception('Imposible abrir '.$file.'.');
        
        $dns = $settings['database']['driver'].':host='.$settings['database']['host'].
        	';dbname='.$settings['database']['schema'];
       
        try {
        	parent::__construct($dns, $settings['database']['username'], $settings['database']['password']);
        } catch (Exception $e) {
       		echo($e->getMessage());
       		die();
        }
        
    }
}
?>