CLASS zcl_35_timer_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA user TYPE string.
    EVENTS time_out EXPORTING VALUE(ev_hour) TYPE zsyst_uzeit.
    METHODS: increment_counter IMPORTING iv_counter TYPE i,
             check_limit,
             constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA counter TYPE i.
ENDCLASS.

CLASS zcl_35_timer_logali_cm IMPLEMENTATION.
  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.
  METHOD check_limit.
    IF me->counter GE 5.
      "DATA(lv_system_time) = cl_abap_context_info=>get_system_time(  ).
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time(  ).
    ENDIF.
  ENDMETHOD.
  METHOD increment_counter.
    me->counter += iv_counter. "same as counter = counter + iv_counter
    me->check_limit(  ).
  ENDMETHOD.
ENDCLASS.
