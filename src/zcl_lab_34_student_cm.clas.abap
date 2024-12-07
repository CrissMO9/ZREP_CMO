CLASS zcl_lab_34_student_cm DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_name IMPORTING iv_name TYPE string,
             get_name EXPORTING ev_name TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA name TYPE string.
ENDCLASS.

CLASS zcl_lab_34_student_cm IMPLEMENTATION.
  METHOD get_name.
    ev_name = me->name.
  ENDMETHOD.
  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.
ENDCLASS.
