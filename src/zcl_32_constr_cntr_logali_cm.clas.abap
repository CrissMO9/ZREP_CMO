CLASS zcl_32_constr_cntr_logali_cm DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_09_contract_logali_cm.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_32_constr_cntr_logali_cm IMPLEMENTATION.
  METHOD zif_09_contract_logali_cm~create_contract.
    me->zif_09_contract_logali_cm~contract_type = iv_cntr_type.
  ENDMETHOD.
ENDCLASS.
