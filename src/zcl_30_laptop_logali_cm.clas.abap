CLASS zcl_30_laptop_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA keyboard TYPE REF TO zcl_29_keyboard_logali_cm.
    METHODS constructor IMPORTING io_keyboard TYPE REF TO zcl_29_keyboard_logali_cm.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_30_laptop_logali_cm IMPLEMENTATION.
  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.
ENDCLASS.
