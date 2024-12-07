CLASS zcl_25_company_usa_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_08_co_company_logali_cm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_25_company_usa_logali_cm IMPLEMENTATION.
  METHOD zif_08_co_company_logali_cm~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.
ENDCLASS.
