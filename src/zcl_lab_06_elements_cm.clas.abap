CLASS zcl_lab_06_elements_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_object,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_object.
    DATA ms_object type ty_object.

    CONSTANTS: cv_constant1 TYPE string VALUE '01',
               cv_constant2 TYPE string VALUE '02',
               cv_constant3 TYPE string VALUE '03',
               cv_constant4 TYPE string VALUE '04'.

    METHODS set_object IMPORTING iv_class     TYPE string
                                 iv_instance  TYPE string
                                 iv_reference TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_06_elements_cm IMPLEMENTATION.
  METHOD set_object.
    ms_object-class     = iv_class.
    ms_object-instance  = iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.
ENDCLASS.
