using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';
using { validity } from '../reuse/validity';
using { Entity_TravelPaths } from './travel-paths';
using { Entity_CompletedRoutes } from './completed-routes';

entity Entity_Routes : cuid, managed, validity {
    token : String;
    is_public : Boolean;
    travel_paths : Association to many Entity_TravelPaths on travel_paths.routes = $self;
    completed_routes : Association to many Entity_CompletedRoutes on completed_routes.routes = $self;
}
