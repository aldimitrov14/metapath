sap.ui.define([
        "sap/ui/core/UIComponent",
        "sap/ui/Device",
        "mp/userdataapp/model/models"
    ],
    function (UIComponent, Device, models) {
        "use strict";

        return UIComponent.extend("mp.userdataapp.Component", {
            metadata: {
                manifest: "json"
            },

            /**
             * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
             * @public
             * @override
             */
            init: function () {
                // call the base component's init function
                UIComponent.prototype.init.apply(this, arguments);

                // enable routing
                this.getRouter().initialize();

                // set the device model
                this.setModel(models.createDeviceModel(), "device");
                this.getModel("displayModel").setData({
                    ID: null,
                    first_name: null,
                    last_name: null,
                    telephone: null,
                    premium: null,
                    edit_mode: false,
                    changed_at: null,
                    changed_by: null,
                })
            }
        });
    }
);