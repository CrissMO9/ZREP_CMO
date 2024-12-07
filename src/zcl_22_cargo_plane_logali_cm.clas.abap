CLASS zcl_22_cargo_plane_logali_cm DEFINITION INHERITING FROM zcl_21_airplane_logali_cm
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_22_cargo_plane_logali_cm IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Cargo Plane'.
  ENDMETHOD.
ENDCLASS.
