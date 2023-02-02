sap.ui.define([
    "./BaseController"
],
    function ( BaseController ) {
        "use strict";

        return BaseController.extend("mp.userdataapp.controller.UserData", {
            dataModel: null,
            displayModel: null,
            onInit: async function () {
                this.dataModel = this.getModel();
                this.displayModel = this.getModel("displayModel");
                this.initUserData();
            },

            initUserData: async function () {
                let data = await this.read_data(this.dataModel, "/UserData");
                this.bindDataToModel(data.results[0]);
            }, 
            
            bindDataToModel: function(data){
                this.displayModel.setProperty("/ID", data?.ID);
                this.displayModel.setProperty("/first_name", data?.first_name);
                this.displayModel.setProperty("/last_name", data?.last_name);
                this.displayModel.setProperty("/telephone", data?.telephone);   
                this.displayModel.setProperty("/premium", data?.premium);
                this.displayModel.setProperty("/changed_by", data?.modifiedBy);  
                this.displayModel.setProperty("/changed_at", data?.modifiedAt); 
            },

            handleEdit: function(){
                this.displayModel.setProperty("/edit_mode", true);               
            },

            handleCancel: function(){
                this.displayModel.setProperty("/edit_mode", false);
            },

            handleSave: async function(){
                this.displayModel.setProperty("/edit_mode", false);  
                let data = {first_name: this.byId("first_name").getValue(),
                            last_name: this.byId("last_name").getValue(),
                            telephone: this.byId("telephone").getValue()};
                if (this.displayModel.getProperty("/ID") == null){
                    data = await this.post_data(this.dataModel, '/UserData', data);
                }else
                {
                    await this.update_data(this.dataModel, `/UserData(${this.displayModel.getProperty("/ID")})`, data);

                    let updated_data = await this.read_data(this.dataModel, "/UserData");

                    data.result = updated_data.results[0];
                }
                this.bindDataToModel(data.result);
            }
        });
    });
