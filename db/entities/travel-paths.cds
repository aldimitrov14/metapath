using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';
using { Entity_Routes } from './routes';
using { validity } from '../reuse/validity';

entity Entity_TravelPaths : cuid, managed, validity {
    starting_latitude : Double;
    starting_longitude : Double;
    final_latitude : Double;
    final_longitude : Double;
    travel_type : String(3);
    routes : Association to Entity_Routes;
}
