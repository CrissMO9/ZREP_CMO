CLASS zcl_lab_29_organization_cm DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_location RETURNING VALUE(rv_location) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_29_organization_cm IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Main Location - Organization'.
  ENDMETHOD.
ENDCLASS.
