const cds = require('@sap/cds');
const { isNil } = require('lodash');

const UserDataManager = require('./business-logic/user-data/user-data-manager') 

const user_data_manager = new UserDataManager();

module.exports = cds.service.impl(async (srv) => {
    srv.on('READ', 'UserData', async (request) => {
        return await user_data_manager.read_user_data(request.user.id);
    })

    srv.on('UPDATE', 'UserData', async (request) => {
        let user_data = await user_data_manager.read_user_data(request.user.id);

        if (user_data){
            await user_data_manager.update_user_data(request?.data)
        }
    })

    srv.before('CREATE', 'UserData', async (request) => {
        let user_data = await user_data_manager.read_user_data(request.user.id);

        if (!isNil(user_data)){
            return request.reject(400, 'User Already Exists')
        } 
    })
})
