using { Entity_Advertisements } from './entities/advertisements';
using { Entity_BuildingAdvertisements } from './entities/building-advertisements';
using { Entity_TravelPaths } from './entities/travel-paths';
using { Entity_Routes } from './entities/routes';
using { Entity_CompletedRoutes } from './entities/completed-routes';


entity Routes as select from Entity_Routes;
entity BuildingAdvertisements as select from Entity_BuildingAdvertisements;
entity Advertisements as select from Entity_Advertisements;
entity TravelPaths as select from Entity_TravelPaths;
entity CompletedRoutes as select from Entity_CompletedRoutes;