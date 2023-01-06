using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';


entity Entity_UserData : cuid, managed {
    first_name : String;
    last_name : String;
    telephone: String;
    premium: Boolean;
}