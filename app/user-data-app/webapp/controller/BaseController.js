sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
    "use strict";

    return Controller.extend(
        "mp.userdataapp.controller.BaseController",
        {

            read_data: function (model, path, aFilters = []) {
                return new Promise(
                    function (resolve, reject) {
                        model.read(path, {
                            filters: aFilters,
                            success: function (oData) {
                                resolve(oData, path);
                            },
                            error: function (oError) {
                                reject({
                                    oError,
                                    path
                                });
                            }
                        });
                    }
                );
            },

            post_data: function (model, path, payload) {
                return new Promise(
                    function (resolve, reject) {
                        model.create(path, payload, {
                            success: function (oData) {
                                resolve({
                                    result: oData,
                                    request: "POST " + path
                                });
                            },
                            error: function (oError) {
                                reject({
                                    oError,
                                    path
                                });
                            },
                            refreshAfterChange: true
                        });
                    }
                );
            },

            update_data: function (model, path, payload) {
                return new Promise(
                    function (resolve, reject) {
                        model.update(path, payload, {
                            success: function (oData) {
                                resolve({
                                    result: oData,
                                    request: "PUT " + path
                                });
                            },
                            error: function (oError) {
                                reject({
                                    oError,
                                    path
                                });
                            },
                            refreshAfterChange: true
                        });
                    }
                );
            },
            delete_data: function (model, path) {
                return new Promise(
                    function (resolve, reject) {
                        model.remove(path, {
                            success: () => {
                                resolve({
                                    request: "DELETE " + path
                                });
                            },
                            error: (oError) => {
                                reject({
                                    oError,
                                    path
                                });
                            }
                        });
                    }
                );
            },
            message: function (sKey, aValues = []) {
                const sMessage = this.getResourceBundle().getText(sKey, aValues);
                sap.m.MessageToast.show(sMessage, {
                    duration: 3000,
                    width: "16rem"
                });
            },
            getModel: function (sName) {
                return this.getOwnerComponent().getModel(sName);
            },
        }
    );
});
