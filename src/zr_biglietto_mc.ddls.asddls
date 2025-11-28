@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS x table ZBIGLIETTO_MC'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_BIGLIETTO_MC 
as select from zbiglietto_mc as Biglietto

{
   key  Biglietto.id_biglietto as idbiglietto, 
        @Semantics.user.createdBy: true
        Biglietto.creato_da as creatoda,
        Biglietto.creato_a as creatoa,
         @Semantics.user.lastChangedBy: true
        Biglietto.modificato_da as modificatoda,
        Biglietto.modificato_a as modificatoa,
        
        case when creato_a = modificato_a
         then ' '
         else 'X'
         end as Modificato
  
}
