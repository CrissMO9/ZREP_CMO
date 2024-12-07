CLASS zcl_lab_33_expatriate_empl_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_cm.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_33_expatriate_empl_cm IMPLEMENTATION.
  METHOD zif_lab_04_employee_cm~get_employees_count.
    rv_count = 5.
  ENDMETHOD.
ENDCLASS.
