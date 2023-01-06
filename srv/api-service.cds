using { com.metapath.database as db } from '../db/data-model';

@(path: '/api')
service API {
  @readonly entity Routes as projection on db.Routes;
  @readonly entity CompletedRoutes as projection on db.CompletedRoutes;
  @readonly entity TravelPaths as projection on db.TravelPaths;
  @readonly entity Advertisements as projection on db.Advertisements;
  @readonly entity BuildingAdvertisements as projection on db.BuildingAdvertisements;
}