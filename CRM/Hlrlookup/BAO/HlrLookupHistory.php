<?php
use CRM_Hlrlookup_ExtensionUtil as E;

class CRM_Hlrlookup_BAO_HlrLookupHistory extends CRM_Hlrlookup_DAO_HlrLookupHistory {

  /**
   * Create a new HlrLookupHistory based on array-data
   *
   * @param array $params key-value pairs
   * @return CRM_Hlrlookup_DAO_HlrLookupHistory|NULL
   *
  public static function create($params) {
    $className = 'CRM_Hlrlookup_DAO_HlrLookupHistory';
    $entityName = 'HlrLookupHistory';
    $hook = empty($params['id']) ? 'create' : 'edit';

    CRM_Utils_Hook::pre($hook, $entityName, CRM_Utils_Array::value('id', $params), $params);
    $instance = new $className();
    $instance->copyValues($params);
    $instance->save();
    CRM_Utils_Hook::post($hook, $entityName, $instance->id, $instance);

    return $instance;
  } */

}
