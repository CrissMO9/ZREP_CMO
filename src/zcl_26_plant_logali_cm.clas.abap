CLASS zcl_26_plant_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING ir_co_company TYPE REF TO zif_08_co_company_logali_cm
                           RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_26_plant_logali_cm IMPLEMENTATION.
  METHOD assign_company.
    rv_plant = |Plant was assigned to...{ ir_co_company->define_company(  ) }|.
  ENDMETHOD.
ENDCLASS.
