using { com.metapath.database as db } from '../db/data-model';

@(path: '/routes')
service Routes {
  entity Routes as projection on db.Routes;
  @Capabilities: {
        InsertRestrictions.Insertable: true,
        UpdateRestrictions.Updatable: false,
        DeleteRestrictions.Deletable: false
  }
  entity CompletedRoutes as projection on db.CompletedRoutes;
  entity TravelPaths as projection on db.TravelPaths;
}