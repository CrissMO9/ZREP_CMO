CLASS zcl_lab_36_phone_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_cm,
             get_screen RETURNING VALUE(rv_screen) TYPE REF TO zcl_lab_37_screen_cm.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_screen TYPE REF TO zcl_lab_37_screen_cm.
ENDCLASS.

CLASS zcl_lab_36_phone_cm IMPLEMENTATION.
  METHOD constructor.
    me->mo_screen = io_screen.
  ENDMETHOD.
  METHOD get_screen.
    rv_screen = me->mo_screen.
  ENDMETHOD.
ENDCLASS.
