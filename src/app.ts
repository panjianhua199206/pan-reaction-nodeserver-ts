import config from './config';
import router from './router';
import express from 'express';

const startServer = () =>  {
    const app = express();
    app.use(router);
    app.listen(config.port, err => {
        if (err) {
            process.exit(1);
            return;
        }
    });
    config.server();
}

startServer();
