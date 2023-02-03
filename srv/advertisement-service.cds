using { com.metapath.database as db } from '../db/data-model';

@(path: '/advertismenets')
service Advertisements {
  @odata.draft.enabled
  entity Advertisements as projection on db.Advertisements;
  @odata.draft.enabled
  entity BuildingAdvertisements as projection on db.BuildingAdvertisements;
}