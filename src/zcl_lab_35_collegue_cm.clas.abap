CLASS zcl_lab_35_collegue_cm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mo_student TYPE REF TO zcl_lab_34_student_cm.
    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student_cm.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_35_collegue_cm IMPLEMENTATION.
  METHOD enroll_student.
    me->mo_student = io_student.
  ENDMETHOD.
ENDCLASS.
