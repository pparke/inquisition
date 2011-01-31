<?php

require_once 'SwatDB/SwatDBRecordsetWrapper.php';
require_once 'SwatDB/SwatDBClassMap.php';
require_once 'Inquisition/dataobjects/InquisitionQuestionOption.php';

/**
 * A recordset wrapper class for InquisitionQuestionOption objects
 *
 * @package   Inquisition
 * @copyright 2011 silverorange
 */
class InquisitionQuestionOptionWrapper extends SwatDBRecordsetWrapper
{
	// {{{ protected function init()

	protected function init()
	{
		parent::init();

		$this->row_wrapper_class =
			SwatDBClassMap::get('InquisitionQuestionOption');

		$this->index_field = 'id';
	}

	// }}}
}

?>
