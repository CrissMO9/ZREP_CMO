CLASS zcl_lab_40_actual_budget_cm DEFINITION INHERITING FROM zcl_lab_39_budget_cm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_40_actual_budget_cm IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = 'Actual Budget'.
  ENDMETHOD.
ENDCLASS.
