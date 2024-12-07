CLASS zcl_lab_37_screen_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_screen_type IMPORTING iv_type TYPE string,
             get_screen_type RETURNING VALUE(rv_type) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen_type TYPE string.
ENDCLASS.

CLASS zcl_lab_37_screen_cm IMPLEMENTATION.
  METHOD get_screen_type.
    rv_type = me->screen_type.
  ENDMETHOD.
  METHOD set_screen_type.
    me->screen_type = iv_type.
  ENDMETHOD.
ENDCLASS.
