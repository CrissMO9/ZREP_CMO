CLASS zcl_37_americanbank_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_10_bank_logali_cm.

    METHODS create_notification RETURNING VALUE(rv_text) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_37_americanbank_logali_cm IMPLEMENTATION.
  METHOD create_notification.
    rv_text = |Event raise...new transfer-{ cl_abap_context_info=>get_system_time(  ) }|.
    RAISE EVENT zif_10_bank_logali_cm~new_transfer.
  ENDMETHOD.
ENDCLASS.
