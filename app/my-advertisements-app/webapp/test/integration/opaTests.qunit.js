sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mp/myadvertisementsapp/test/integration/FirstJourney',
		'mp/myadvertisementsapp/test/integration/pages/AdvertisementsList',
		'mp/myadvertisementsapp/test/integration/pages/AdvertisementsObjectPage'
    ],
    function(JourneyRunner, opaJourney, AdvertisementsList, AdvertisementsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mp/myadvertisementsapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAdvertisementsList: AdvertisementsList,
					onTheAdvertisementsObjectPage: AdvertisementsObjectPage
                }
            },
            opaJourney.run
        );
    }
);