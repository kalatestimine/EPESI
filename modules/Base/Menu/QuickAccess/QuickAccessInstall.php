<?php
/**
 * QuickAccessInstall class.
 * 
 * This class provides initialization data for QuickAccess module.
 * 
 * @author Arkadiusz Bisaga <abisaga@telaxus.com>
 * @copyright Copyright &copy; 2006, Telaxus LLC
 * @version 1.0
 * @licence SPL
 * @package epesi-base-extra
 * @subpackage menu-quick-access
 */
defined("_VALID_ACCESS") || die('Direct access forbidden');

class Base_Menu_QuickAccessInstall extends ModuleInstall {
	public static function install() {
		return true;
	}
	
	public static function uninstall() {
		return true;
	}
	
	public static function version() {
		return array('1.0.0');
	}
}

?>
