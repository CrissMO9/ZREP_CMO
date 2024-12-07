CLASS zcl_38_bankclient_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_new_transfer FOR EVENT new_transfer OF zif_10_bank_logali_cm
                            IMPORTING sender.
    DATA notification TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_38_bankclient_logali_cm IMPLEMENTATION.
  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time(  ) }|.
  ENDMETHOD.
ENDCLASS.
