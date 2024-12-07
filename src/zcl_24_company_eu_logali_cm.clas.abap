CLASS zcl_24_company_eu_logali_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_08_co_company_logali_cm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_24_company_eu_logali_cm IMPLEMENTATION.
  METHOD zif_08_co_company_logali_cm~define_company.
    rv_company = 'Company Europe.....'.
  ENDMETHOD.
ENDCLASS.
