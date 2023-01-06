using { Entity_Advertisements } from './entities/advertisements';
using { Entity_BuildingAdvertisements } from './entities/building-advertisements';
using { Entity_TravelPaths } from './entities/travel-paths';
using { Entity_Routes } from './entities/routes';
using { Entity_CompletedRoutes } from './entities/completed-routes';
using { Entity_UserData } from './entities/user-data';

namespace com.metapath.database;

entity Routes as select from Entity_Routes;
entity BuildingAdvertisements as select from Entity_BuildingAdvertisements;
entity Advertisements as select from Entity_Advertisements;
entity TravelPaths as select from Entity_TravelPaths;
entity CompletedRoutes as select from Entity_CompletedRoutes;
entity UserData as select from Entity_UserData;