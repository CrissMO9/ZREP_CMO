CLASS zcl_lab_09_account_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_iban IMPORTING iban TYPE string,
             get_iban EXPORTING iban TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA iban TYPE string.
ENDCLASS.

CLASS zcl_lab_09_account_cm IMPLEMENTATION.
  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.
  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.
ENDCLASS.
