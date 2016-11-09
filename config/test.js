'use strict';

module.exports = {
    nodeEnvShort: 'test',
    // Any services provided should be given different port numbers for test
	provides: {
		express: {
	        logging: null,
            port: 8081,
            externalUrl: {
                host: 'localhost:8081'
            },
        }
	}
};
