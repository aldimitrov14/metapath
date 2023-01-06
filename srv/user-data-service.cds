using { com.metapath.database as db } from '../db/data-model';

@(path: '/user-data')
service UserData {
  entity UserData as projection on db.UserData;
}