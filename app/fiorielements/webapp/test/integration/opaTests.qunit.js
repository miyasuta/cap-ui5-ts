sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'miyasuta/fiorielements/test/integration/FirstJourney',
		'miyasuta/fiorielements/test/integration/pages/BooksList',
		'miyasuta/fiorielements/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('miyasuta/fiorielements') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);