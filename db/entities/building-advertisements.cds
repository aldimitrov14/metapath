using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';
using { validity } from '../reuse/validity';


entity Entity_BuildingAdvertisements: cuid, managed, validity {
    description : String;
    building_latitude: Double;
    building_longitude: Double;
}