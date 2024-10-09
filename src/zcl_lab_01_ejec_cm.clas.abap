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
    DATA(lo_person)  = NEW zcl_lab_04_person_cm(  ).
    DATA(lo_flight)  = NEW zcl_lab_05_flight_cm(  ).
    DATA(lo_element) = NEW zcl_lab_06_elements_cm(  ).
    DATA(lo_student) = NEW zcl_lab_07_student_cm(  ).
*    DATA(lo_record)  = NEW lcl_lab_08_work_record(  ).
    DATA(lo_account) = NEW zcl_lab_09_account_cm(  ).

    IF lo_person IS BOUND.
      lo_person->set_age( iv_age = '27' ).
      lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
    ENDIF.
    IF lo_element IS BOUND.
      lo_flight->get_flight( EXPORTING iv_company_code = 'LH'
                                       iv_flight_nro   = '01'
                             RECEIVING rv_result       = DATA(lv_result) ).
    ENDIF.
    IF lo_element IS BOUND.
      lo_element->set_object( iv_class = 'CLASS' iv_instance = 'INSTANCE' iv_reference = 'REFERENCE' ).
    ENDIF.
    IF lo_student IS BOUND.
      lo_student->set_birth_date( iv_birth_date = '20040926' ).
    ENDIF.
*    IF lo_record IS BOUND.
*      lo_record->open_new_record( iv_date = '20240926' iv_first_name = 'Cris' iv_last_name = 'Martinez' ).
*    ENDIF.
    lcl_lab_08_work_record=>open_new_record( iv_date = '20240926' iv_first_name = 'Cris' iv_last_name = 'Martinez' ).
    IF lo_account IS BOUND.
      lo_account->set_iban( iban = 'IBAN' ).
      lo_account->get_iban( IMPORTING iban = DATA(lv_iban) ).
    ENDIF.
    out->write( lv_age ).
    out->write( lv_result ).
    out->write( lo_element->ms_object-class ).
    out->write( lo_element->ms_object-instance ).
    out->write( lo_element->ms_object-reference ).
    out->write( |{ lo_element->cv_constant1 }-{ lo_element->cv_constant2 }-{ lo_element->cv_constant3 }-{ lo_element->cv_constant4 }| ).
    out->write( lv_iban ).
  ENDMETHOD.
ENDCLASS.
