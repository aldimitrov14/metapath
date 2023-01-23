/*global QUnit*/

sap.ui.define([
	"mp/user-data-app/controller/UserData.controller"
], function (Controller) {
	"use strict";

	QUnit.module("UserData Controller");

	QUnit.test("I should test the UserData controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
