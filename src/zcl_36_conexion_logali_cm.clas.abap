CLASS zcl_36_conexion_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: hour TYPE zsyst_uzeit,
          sender_user TYPE string.
    METHODS: on_time_out FOR EVENT time_out OF zcl_35_timer_logali_cm
                         IMPORTING ev_hour
                                   sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_36_conexion_logali_cm IMPLEMENTATION.
  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
    "Call logout method

  ENDMETHOD.
ENDCLASS.
