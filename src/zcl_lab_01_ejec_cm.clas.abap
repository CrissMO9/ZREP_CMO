CLASS zcl_lab_01_ejec_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_cm IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
**********************************************************************
*   Laboratorio - Bloque III - 2
**********************************************************************

**********************************************************************
*   Laboratorio - Bloque III - 1
**********************************************************************
    "Exercise 1 - Polimorfismo con clases
*    DATA: gt_locations TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_cm,
*          lo_locations TYPE REF TO zcl_lab_29_organization_cm.
*
*    DATA(lo_germany)  = NEW zcl_lab_30_org_germany_cm(  ).
*    DATA(lo_france)   = NEW zcl_lab_31_org_france_cm( ).
*
*    APPEND lo_germany TO gt_locations.
*    APPEND lo_france TO gt_locations.
*
*    LOOP AT gt_locations INTO lo_locations.
*        out->write( lo_locations->get_location(  ) ).
*    ENDLOOP.

    "Exercise 2 - Polimorfismo con interfaces
*    DATA: gt_count TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_cm,
*          lo_count TYPE REF TO zif_lab_04_employee_cm.
*
*    DATA(lo_internal_emp) = NEW zcl_lab_32_internal_empl_cm(  ).
*    DATA(lo_expatriate_emp) = NEW zcl_lab_33_expatriate_empl_cm(  ).
*
*    APPEND lo_internal_emp TO gt_count.
*    APPEND lo_expatriate_emp TO gt_count.
*
*    LOOP AT gt_count INTO lo_count.
*        out->write( lo_count->get_employees_count(  ) ).
*    ENDLOOP.

    "Exercise 3 - Asociacion
*    DATA(lo_student) = NEW zcl_lab_34_student_cm(  ).
*    DATA(lo_collegue) = NEW zcl_lab_35_collegue_cm(  ).
*
*    lo_student->set_name( 'Cristina Martinez' ).
*    lo_collegue->enroll_student( lo_student ).
*    lo_collegue->mo_student->get_name( IMPORTING ev_name = data(lv_student_name) ).
*    out->write( lv_student_name ).

    "Exercise 4 - Composicion
*    DATA(lo_screen) = NEW zcl_lab_37_screen_cm(  ).
*    lo_screen->set_screen_type( 'AMOLED' ).
*    DATA(lo_phone) = NEW zcl_lab_36_phone_cm( lo_screen ).
*    out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

    "Exercise 5 - Multiples referencias apuntando a un mismo objeto
*    DATA(lo_price1) = NEW zcl_lab_38_prod_price_cm(  ).
*    DATA(lo_price2) = NEW zcl_lab_38_prod_price_cm(  ).
*
*    lo_price2 = lo_price1.
*    lo_price2->price = 27.
*
*    out->write( lo_price1->price ).

    "Exercise 6 - Crear instancias de tipos distintos
*    DATA lo_budget TYPE REF TO zcl_lab_39_budget_cm.
*
*    lo_budget = NEW zcl_lab_40_actual_budget_cm(  ).
*    out->write( lo_budget->get_budget(  ) ).

    "Exercise 7 - Asignar instancias a la clase generica Object
*    DATA: lo_organization TYPE REF TO object,
*          lv_method       TYPE string,
*          lv_headquarters TYPE string.
*
*    lo_organization = NEW zcl_lab_41_organization_cm(  ).
*    lv_method = 'SET_HEADQUARTERS'.
*    CALL METHOD lo_organization->(lv_method) EXPORTING iv_headquarters = 'Spain'.
*    lv_method = 'GET_HEADQUARTERS'.
*    CALL METHOD lo_organization->(lv_method) RECEIVING rv_headquarters = lv_headquarters.
*    out->write( lv_headquarters ).

**********************************************************************
*   Laboratorio - Bloque I
**********************************************************************
*    DATA(lo_person)  = NEW zcl_lab_04_person_cm(  ).
*    DATA(lo_flight)  = NEW zcl_lab_05_flight_cm(  ).
*    DATA(lo_element) = NEW zcl_lab_06_elements_cm(  ).
*    DATA(lo_student) = NEW zcl_lab_07_student_cm(  ).
**    DATA(lo_record)  = NEW lcl_lab_08_work_record(  ).
*    DATA(lo_account) = NEW zcl_lab_09_account_cm(  ).
*
*    IF lo_person IS BOUND.
*      lo_person->set_age( iv_age = '27' ).
*      lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
*    ENDIF.
*    IF lo_element IS BOUND.
*      lo_flight->get_flight( EXPORTING iv_company_code = 'LH'
*                                       iv_flight_nro   = '01'
*                             RECEIVING rv_result       = DATA(lv_result) ).
*    ENDIF.
*    IF lo_element IS BOUND.
*      lo_element->set_object( iv_class = 'CLASS' iv_instance = 'INSTANCE' iv_reference = 'REFERENCE' ).
*    ENDIF.
*    IF lo_student IS BOUND.
*      lo_student->set_birth_date( iv_birth_date = '20040926' ).
*    ENDIF.
**    IF lo_record IS BOUND.
**      lo_record->open_new_record( iv_date = '20240926' iv_first_name = 'Cris' iv_last_name = 'Martinez' ).
**    ENDIF.
*    lcl_lab_08_work_record=>open_new_record( iv_date = '20240926' iv_first_name = 'Cris' iv_last_name = 'Martinez' ).
*    IF lo_account IS BOUND.
*      lo_account->set_iban( iban = 'IBAN' ).
*      lo_account->get_iban( IMPORTING iban = DATA(lv_iban) ).
*    ENDIF.
*    out->write( lv_age ).
*    out->write( lv_result ).
*    out->write( lo_element->ms_object-class ).
*    out->write( lo_element->ms_object-instance ).
*    out->write( lo_element->ms_object-reference ).
*    out->write( |{ lo_element->cv_constant1 }-{ lo_element->cv_constant2 }-{ lo_element->cv_constant3 }-{ lo_element->cv_constant4 }| ).
*    out->write( lv_iban ).
  ENDMETHOD.
ENDCLASS.
