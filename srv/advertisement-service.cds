using { com.metapath.database as db } from '../db/data-model';

@(path: '/advertismenets')
service Advertisements {
  @odata.draft.enabled
  entity Advertisements @(restrict: [
{ grant: ['CREATE', 'READ', 'UPDATE', 'DELETE'], where: 'CreatedBy = $user' } ]) as projection on db.Advertisements;
  @odata.draft.enabled
  entity BuildingAdvertisements @(restrict: [
{ grant: ['CREATE', 'READ', 'UPDATE', 'DELETE'], where: 'CreatedBy = $user' } ]) as projection on db.BuildingAdvertisements;

  @cds.odata.valuelist
  entity AdvetisementTypes as projection on db.AdvertisementTypes;
}