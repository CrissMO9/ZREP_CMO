CLASS zcl_27_credit_card_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_cred_card IMPORTING iv_card_num TYPE string,
             get_cred_card RETURNING VALUE(rv_card_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA card_num TYPE string.
ENDCLASS.

CLASS zcl_27_credit_card_logali_cm IMPLEMENTATION.
  METHOD get_cred_card.
    rv_card_num = me->card_num.
  ENDMETHOD.
  METHOD set_cred_card.
    me->card_num = iv_card_num.
  ENDMETHOD.
ENDCLASS.
