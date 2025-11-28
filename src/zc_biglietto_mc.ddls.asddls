@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS di proiez.per tabella zbilgietto_mc'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_BIGLIETTO_MC
  provider contract transactional_query
  as projection on ZR_BIGLIETTO_MC as biglietto
{
  key  biglietto.idbiglietto  as idbiglietto,
       biglietto.creatoda     as creatoda,
       biglietto.creatoa      as creatoa,
       biglietto.modificatoda as modificatoda,
       biglietto.modificatoa  as modificatoa,
       biglietto.Modificato   as modifica


}
