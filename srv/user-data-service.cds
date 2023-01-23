using { com.metapath.database as db } from '../db/data-model';

@(path: '/user-data')
service UserData {
    @Capabilities: {
        InsertRestrictions.Insertable: true,
        UpdateRestrictions.Updatable: true,
        DeleteRestrictions.Deletable: false
  }
  entity UserData as projection on db.UserData;
}