CLASS zcl_39_mail_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-EVENTS new_mail EXPORTING VALUE(ev_subject) TYPE string.
    CLASS-METHODS compose_mail.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_39_mail_logali_cm IMPLEMENTATION.
  METHOD compose_mail.
    RAISE EVENT new_mail
      EXPORTING ev_subject = |ABAP Programmer job offer: { cl_abap_context_info=>get_system_time(  ) }|.
  ENDMETHOD.
ENDCLASS.
