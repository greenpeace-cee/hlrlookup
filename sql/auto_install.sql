-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC. All rights reserved.                        |
-- |                                                                    |
-- | This work is published under the GNU AGPLv3 license with some      |
-- | permitted exceptions and without any warranty. For full license    |
-- | and copyright information, see https://civicrm.org/licensing       |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the existing tables - this section generated from drop.tpl
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_hlr_lookup_history`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_hlr_lookup_history
-- *
-- * HLR lookup history
-- *
-- *******************************************************/
CREATE TABLE `civicrm_hlr_lookup_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique HlrLookupHistory ID',
  `msisdn` varchar(32) NOT NULL COMMENT 'Phone number stripped of all whitespace, letters, and punctuation.',
  `mobile_provider_id` int unsigned NOT NULL COMMENT 'Which Mobile Provider does this phone belong to.',
  `response_code_id` int unsigned NOT NULL,
  `response_date` datetime NOT NULL COMMENT 'Date of the Response',
  PRIMARY KEY (`id`),
  INDEX `index_msisdn`(msisdn),
  INDEX `index_response_date`(response_date),
  INDEX `index_msisdn_response_date`(msisdn, response_date)
)
ENGINE=InnoDB;
