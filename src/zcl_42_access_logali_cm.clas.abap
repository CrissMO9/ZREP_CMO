CLASS zcl_42_access_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor.
    METHODS on_blocked_entrance FOR EVENT blocked_entrance OF zcl_41_building_logali_cm
                                IMPORTING ev_entry.
    CLASS-DATA table_blocked_entries TYPE TABLE OF string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_42_access_logali_cm IMPLEMENTATION.
  METHOD on_blocked_entrance.
    APPEND |{ ev_entry } entry blocked| TO table_blocked_entries.
  ENDMETHOD.
  METHOD constructor.
    SET HANDLER me->on_blocked_entrance FOR ALL INSTANCES.
  ENDMETHOD.
ENDCLASS.
