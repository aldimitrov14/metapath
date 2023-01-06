using { cuid, managed, Language, sap.common.CodeList } from '@sap/cds/common';
using { validity } from '../reuse/validity';


entity Entity_Advertisements: cuid, managed, validity {
    description : String;
    type : String(3);
    content: LargeBinary;
}