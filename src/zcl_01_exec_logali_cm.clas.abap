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

***********************************************************************
** Example for zcl_41_building_logali_cm
***********************************************************************
    DATA(go_north_building)  = NEW zcl_41_building_logali_cm(  ).
    DATA(go_south_building) = NEW zcl_41_building_logali_cm(  ).
    DATA(go_east_building)   = NEW zcl_41_building_logali_cm(  ).
    DATA(go_west_building)   = NEW zcl_41_building_logali_cm(  ).
    DATA(go_access) = NEW zcl_42_access_logali_cm(  ).

*    SET HANDLER go_access->on_blocked_entrance FOR ALL INSTANCES. "Same as use set handler for each instance " Replace in constructor class 42
*    SET HANDLER go_access->on_blocked_entrance FOR go_north_building.
*    SET HANDLER go_access->on_blocked_entrance FOR go_south_building.
*    SET HANDLER go_access->on_blocked_entrance FOR go_east_building.
*    SET HANDLER go_access->on_blocked_entrance FOR go_west_building.

    go_north_building->entry = 'NORTH'.
    go_north_building->close_entry(  ).

    go_south_building->entry = 'SOUTH'.
    go_south_building->close_entry(  ).

    go_east_building->entry = 'EAST'.
    go_east_building->close_entry(  ).

    go_west_building->entry = 'WEST'.
    go_west_building->close_entry(  ).

    out->write( zcl_42_access_logali_cm=>table_blocked_entries ).

***********************************************************************
** Example for zcl_39_mail_logali_cm
***********************************************************************
*    SET HANDLER zcl_40_smtp_logali_cm=>on_new_mail.
*
*    DO 3 times.
*      WAIT UP TO 1 SECONDS.
*        zcl_39_mail_logali_cm=>compose_mail(  ).
*    ENDDO.
*    out->write( zcl_40_smtp_logali_cm=>table_inbox ).

***********************************************************************
** Example for zcl_37_americanbank_logali_cm
***********************************************************************
*    DATA(go_americanbank) = NEW zcl_37_americanbank_logali_cm(  ).
*    DATA(go_bankclient) = NEW zcl_38_bankclient_logali_cm(  ).
*
*    SET HANDLER go_bankclient->on_new_transfer FOR go_americanbank. "ACTIVATION abap_true by default
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*      out->write( go_americanbank->create_notification(  ) ).
*      out->write( go_bankclient->notification ).
*      IF sy-index EQ 3.
*        SET HANDLER go_bankclient->on_new_transfer FOR go_americanbank ACTIVATION abap_false. "To deactivate the handle
*        go_bankclient->notification = 'No handler for event new transfer'.
*      ENDIF.
*    ENDDO.
***********************************************************************
** Example for zcl_35_timer_logali_cm
***********************************************************************
*    DATA(go_timer) = NEW zcl_35_timer_logali_cm(  ).
*    DATA(go_conexion) = NEW zcl_36_conexion_logali_cm(  ).
*
*    SET HANDLER go_conexion->on_time_out FOR go_timer.
*
*    DO.
*        WAIT UP TO 1 SECONDS.
*        go_timer->increment_counter( 1 ).
*
*        IF go_conexion->hour IS INITIAL.
*          out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time(  ) }| ).
*        ELSE.
*          out->write( |Event was raised at: { go_conexion->hour }-{ go_conexion->sender_user }| ).
*          EXIT.
*        ENDIF.
*    ENDDO.
***********************************************************************
** Example for zcl_34_product_logali_cm
***********************************************************************
*    DATA go_object TYPE REF TO object.
*    DATA lv_category TYPE string.
*
*    go_object = NEW zcl_34_product_logali_cm(  ).
*    DATA(lv_method_name) = 'RETURN_CATEGORY'.
*    CALL METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.
*    out->write( lv_category ).

***********************************************************************
** Example for zcl_32_constr_contr_logali_cm
***********************************************************************
*    DATA: go_contrato TYPE REF TO zif_09_contract_logali_cm,
*          go_constr_contract TYPE REF TO zcl_32_constr_cntr_logali_cm.
*
**    create object go_contrato type zcl_32_constr_cntr_logali_cm. "Same as next line code
*    go_contrato = new zcl_32_constr_cntr_logali_cm(  ). "Because the class implement the interface so is possible to instanciate
*    go_constr_contract = new zcl_33_record_logali_cm(  ).
*    go_contrato = NEW zcl_33_record_logali_cm(  ).

***********************************************************************
** Example for zcl_31_vat_indicator_logali_cm
***********************************************************************
*    DATA: lo_vat_indicator_1 TYPE REF TO zcl_31_vat_indicator_logali_cm,
*          lo_vat_indicator_2 TYPE REF TO zcl_31_vat_indicator_logali_cm,
*          lo_vat_indicator_3 TYPE REF TO zcl_31_vat_indicator_logali_cm.
*
**    CREATE OBJECT: lo_vat_indicator_1,
**                   lo_vat_indicator_2,
**                   lo_vat_indicator_3.
*
*    lo_vat_indicator_1 = NEW #(  ).
*    lo_vat_indicator_2 = NEW #(  ).
*    lo_vat_indicator_3 = NEW #(  ).
*
*    lo_vat_indicator_2 = lo_vat_indicator_1.
*    lo_vat_indicator_3 = lo_vat_indicator_1.
*
*    lo_vat_indicator_1->vat_ind = 'A1'.
*    lo_vat_indicator_2->vat_ind = 'A2'.
*    lo_vat_indicator_3->vat_ind = 'A3'.
*
*    out->write( lo_vat_indicator_1->vat_ind ).
*    out->write( lo_vat_indicator_2->vat_ind ).
*    out->write( lo_vat_indicator_3->vat_ind ).

***********************************************************************
** Example for zcl_29_keyboard_logali_cm
***********************************************************************
*    DATA(lo_keyboard) = NEW zcl_29_keyboard_logali_cm(  ).
*    DATA(lo_laptop) = NEW zcl_30_laptop_logali_cm( io_keyboard = lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*    out->write( lo_laptop->keyboard->keyboard_type ).

***********************************************************************
** Example for zcl_27_credit_card_logali_cm
***********************************************************************
*    DATA(lo_credit_card) = NEW zcl_27_credit_card_logali_cm(  ).
*    DATA(lo_client) = NEW zcl_28_client_logali_cm(  ).
*
*    lo_credit_card->set_cred_card( '1111 2222 3333 4444' ).
*    lo_client->set_credit_card( lo_credit_card ).
*    out->write( lo_client->get_credit_card(  )->get_cred_card( ) ).

***********************************************************************
** Example for zcl_24_company_logali_cm
***********************************************************************
*    DATA: gt_co_companies TYPE STANDARD TABLE OF REF TO zif_08_co_company_logali_cm,
*          go_co_company   TYPE REF TO zif_08_co_company_logali_cm,
*          go_company_eu   TYPE REF TO zcl_24_company_eu_logali_cm,
*          go_company_usa  TYPE REF TO zcl_25_company_usa_logali_cm,
*          go_plant        TYPE REF TO zcl_26_plant_logali_cm.
*
*    go_company_eu = NEW #(  ).
*    APPEND go_company_eu TO gt_co_companies.
*    go_company_usa = NEW #(  ).
*    APPEND go_company_usa TO gt_co_companies.
*    go_plant = NEW #(  ).
*
*    LOOP AT gt_co_companies INTO go_co_company.
*      out->write( go_co_company->define_company(  ) ).
*      out->write( go_plant->assign_company( go_co_company ) ).
*    ENDLOOP.

***********************************************************************
** Example for zcl_21_airplane_logali_cm
***********************************************************************
*    DATA: gt_airplanes       TYPE STANDARD TABLE OF REF TO zcl_21_airplane_logali_cm,
*          go_airplane        TYPE REF TO zcl_21_airplane_logali_cm,
*          go_cargo_plane     TYPE REF TO zcl_22_cargo_plane_logali_cm,
*          go_passenger_plane TYPE REF TO zcl_23_passenger_plane_cm.
*
*    go_cargo_plane = NEW #(  ).
*    APPEND go_cargo_plane TO gt_airplanes.
*    go_passenger_plane = NEW #(  ).
*    APPEND go_passenger_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO go_airplane.
*      out->write( go_airplane->airplane_type(  ) ).
*    ENDLOOP.

**********************************************************************
*   "Opcion 1
**    DATA lo_contract TYPE REF TO zcl_02_contract_logali_cm.
**    CREATE OBJECT lo_contract.
**    lo_contract = NEW #(  ).
*    "Opcion 2
*    DATA(lo_contract) = NEW zcl_02_contract_logali_cm(  ).
*    DATA(lo_contract2) = NEW zcl_02_contract_logali_cm(  ).
*    DATA lv_process TYPE string.
*    DATA: lt_address TYPE zcl_02_contract_logali=>tty_address,
*          ls_address TYPE zcl_02_contract_logali=>ty_address.
*
*    IF lo_contract IS BOUND.
*      "CALL METHOD lo_contract->set_client
*      lo_contract->set_client(   "Ctrl + space + shft+ enter añade todo los parametros
*        EXPORTING
*          iv_client   = 'Logali'
**          iv_location = space
*        IMPORTING
*          ev_status   = DATA(iv_status)
*        CHANGING
*          cv_process  = lv_process ).
*
*       lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
*       lo_contract->region = 'EU'.
*       DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id = '01' ).
*       IF NOT lo_contract->get_client_name( iv_client_id = '01' ) IS INITIAL.
*         out->write( lo_contract->get_client_name( iv_client_id = '01' ) ).
*       ENDIF.
*    ENDIF.
*
*    zcl_02_contract_logali=>set_cntr_type( iv_cntr_type = 'Construction' ).
*    zcl_02_contract_logali=>get_cntr_type(
*      IMPORTING
*        ev_cntr_type = DATA(lv_cntr_type) ).
*
**    zcl_02_contract_logali=>currency = 'USD'.
**    zcl_02_contract_logali=>currency = zcl_02_contract_logali_cm=>cv_currency_usd.
*    zcl_02_contract_logali=>currency = zcl_02_contract_logali_cm=>cs_currency-usd.
*
*    out->write( zcl_02_contract_logali=>currency ).
*    out->write( |{ lv_client }-{ iv_status }-{ lv_process }-{ lo_contract->region }| ).
*    out->write( lv_cntr_type ).
*    out->write( zcl_02_contract_logali_cm=>company ).
  ENDMETHOD.
ENDCLASS.
