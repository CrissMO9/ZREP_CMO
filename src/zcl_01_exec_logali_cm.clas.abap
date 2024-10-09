CLASS zcl_01_exec_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_01_exec_logali_cm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
   "Opcion 1
*    DATA lo_contract TYPE REF TO zcl_02_contract_logali_cm.
*    CREATE OBJECT lo_contract.
*    lo_contract = NEW #(  ).
    "Opcion 2
    DATA(lo_contract) = NEW zcl_02_contract_logali_cm(  ).
    DATA(lo_contract2) = NEW zcl_02_contract_logali_cm(  ).
    DATA lv_process TYPE string.
    DATA: lt_address TYPE zcl_02_contract_logali=>tty_address,
          ls_address TYPE zcl_02_contract_logali=>ty_address.

    IF lo_contract IS BOUND.
      "CALL METHOD lo_contract->set_client
      lo_contract->set_client(   "Ctrl + space + shft+ enter añade todo los parametros
        EXPORTING
          iv_client   = 'Logali'
*          iv_location = space
        IMPORTING
          ev_status   = DATA(iv_status)
        CHANGING
          cv_process  = lv_process ).

       lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
       lo_contract->region = 'EU'.
       DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id = '01' ).
       IF NOT lo_contract->get_client_name( iv_client_id = '01' ) IS INITIAL.
         out->write( lo_contract->get_client_name( iv_client_id = '01' ) ).
       ENDIF.
    ENDIF.

    zcl_02_contract_logali=>set_cntr_type( iv_cntr_type = 'Construction' ).
    zcl_02_contract_logali=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type) ).

*    zcl_02_contract_logali=>currency = 'USD'.
*    zcl_02_contract_logali=>currency = zcl_02_contract_logali_cm=>cv_currency_usd.
    zcl_02_contract_logali=>currency = zcl_02_contract_logali_cm=>cs_currency-usd.

    out->write( zcl_02_contract_logali=>currency ).
    out->write( |{ lv_client }-{ iv_status }-{ lv_process }-{ lo_contract->region }| ).
    out->write( lv_cntr_type ).
    out->write( zcl_02_contract_logali_cm=>company ).
  ENDMETHOD.
ENDCLASS.

