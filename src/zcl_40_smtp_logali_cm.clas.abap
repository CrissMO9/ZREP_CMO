CLASS zcl_40_smtp_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS on_new_mail FOR EVENT new_mail OF zcl_39_mail_logali_cm
                              IMPORTING ev_subject.
    CLASS-DATA table_inbox TYPE TABLE OF string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_40_smtp_logali_cm IMPLEMENTATION.
  METHOD on_new_mail.
    APPEND ev_subject TO table_inbox.
  ENDMETHOD.
ENDCLASS.
