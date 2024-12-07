*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
*class lcl_lab_08_work_record definition.
*  public section.
*    CLASS-METHODS open_new_record IMPORTING iv_date       TYPE zdate
*                                            iv_first_name TYPE string
*                                            iv_last_name  TYPE string
*                                            iv_surname    TYPE string OPTIONAL.
*
*  protected section.
*  private section.
*    CLASS-DATA: date       TYPE zdate,
*                first_name TYPE string,
*                last_name  TYPE string,
*                surname    TYPE string.
*endclass.
*
*class lcl_lab_08_work_record implementation.
*  METHOD open_new_record.
*    date       = iv_date.
*    first_name = iv_first_name.
*    last_name  = iv_last_name.
*    surname    = iv_surname.
*  ENDMETHOD.
*endclass.
