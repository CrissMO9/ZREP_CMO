CLASS zcl_lab_31_org_france_cm DEFINITION INHERITING FROM zcl_lab_29_organization_cm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_31_org_france_cm IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Location - France'.
  ENDMETHOD.
ENDCLASS.
