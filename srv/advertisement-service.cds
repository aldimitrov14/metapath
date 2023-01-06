using { com.metapath.database as db } from '../db/data-model';

@(path: '/advertismenets')
service Advertisements {
  entity Advertisements as projection on db.Advertisements;
  entity BuildingAdvertisements as projection on db.BuildingAdvertisements;
}