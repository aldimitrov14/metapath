using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';


entity Entity_AdvertisementTypes: CodeList {
    key code: String(3);
}