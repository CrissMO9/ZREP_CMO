CLASS zcl_lab_41_organization_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_headquarters IMPORTING iv_headquarters TYPE string,
             get_headquerters RETURNING VALUE(rv_headquarters) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA headquarters TYPE string.
ENDCLASS.

CLASS zcl_lab_41_organization_cm IMPLEMENTATION.
  METHOD set_headquarters.
    me->headquarters = iv_headquarters.
  ENDMETHOD.
  METHOD get_headquerters.
    rv_headquarters = me->headquarters.
  ENDMETHOD.
ENDCLASS.
