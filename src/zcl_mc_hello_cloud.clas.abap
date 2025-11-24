CLASS zcl_mc_hello_cloud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
     _m_test
       importing
         iv_input type char3
       returning
         value(rv_test)  type char10.
ENDCLASS.



CLASS zcl_mc_hello_cloud IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( _m_test( 'MC' ) ).


   ENDMETHOD.


    METHOD _m_test.

      rv_test = |Ciaoyuyiyiih { iv_input }|.


  ENDMETHOD.
ENDCLASS.
