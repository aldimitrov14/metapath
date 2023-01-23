/* eslint-disable no-undef */

const cds = require('@sap/cds');
const {UserData} = cds.entities('com.metapath.database')

module.exports = class UserDataManager {

    async read_user_data(user_name){
        return await SELECT.one.from(UserData) .where({createdBy: user_name});
    }

    async update_user_data(data){
        await UPDATE.entity(UserData).set(data).where({ID: data.ID})
    }

}