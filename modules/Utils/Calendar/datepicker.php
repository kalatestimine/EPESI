<?php
require_once("HTML/QuickForm/input.php");

/**
 * HTML class for a text field
 * 
 * @author       Paul Bukowski <pbukowski@telaxus.com>
 */
class HTML_QuickForm_datepicker extends HTML_QuickForm_input {
                
	function HTML_QuickForm_datepicker($elementName=null, $elementLabel=null, $attributes=null) {
		HTML_QuickForm_input::HTML_QuickForm_input($elementName, $elementLabel, $attributes);
		$this->_persistantFreeze = true;
		$this->setType('text');
	} //end constructor
        
	function toHtml() {
		$str = "";
		if ($this->_flagFrozen) {
			$str .= $this->getFrozenHtml();
		} else {
			$id = $this->getAttribute('id');
			if(!isset($id)) {
				$id = 'datepicker_field_'.$this->getAttribute('name');
				$this->updateAttributes(array('id'=>$id));
			}
			$str .= $this->_getTabs() . '<input ' . $this->_getAttrString($this->_attributes) . ' />'.
				Utils_CalendarCommon::show(
					'new Ajax.Request(\'modules/Utils/Calendar/up.php\','.
					'{method:\'post\', parameters:{date: __YEAR__+\'-\'+__MONTH__+\'-\'+__DAY__},'.
					'onSuccess:function(t){$(\''.Epesi::escapeJS($id,false).'\').value=t.responseText;}})');
		}
		return $str;
	} //end func toHtml

	function exportValue(&$submitValues, $assoc = false) {                                                                          
		$val = parent::exportValue($submitValues,$assoc);
		if($assoc)
			$val[$this->getName()] = strftime('%Y-%m-%d',Base_RegionalSettingsCommon::reg2time($val[$this->getName()]));
		else
			$val=strftime('%Y-%m-%d',Base_RegionalSettingsCommon::reg2time($val));
		return $val;
	}
	
} //end class HTML_QuickForm_text
?>