CLASS zcl_lab_05_flight_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_flight IMPORTING iv_company_code TYPE string
                                 iv_flight_nro   TYPE string
                       RETURNING VALUE(rv_result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_05_flight_cm IMPLEMENTATION.
  METHOD get_flight.
    SELECT SINGLE * FROM /dmo/flight
      WHERE carrier_id    = @iv_company_code
        AND connection_id = @iv_flight_nro
      INTO @DATA(lv_carrier_id).
    CASE sy-subrc.
      WHEN 0.
        rv_result = 'TRUE'.
      WHEN OTHERS.
        rv_result = 'FALSE'.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
