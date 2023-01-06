using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';
using { Entity_Routes } from './routes';

entity Entity_CompletedRoutes: cuid, managed {

    time_spent: Time;
    completion_date: Date;
    routes: Association to many Entity_Routes on routes.completed_routes = $self;
}