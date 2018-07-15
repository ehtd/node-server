const hapi = require('hapi');

const server = hapi.server({
    port: 8000,
    host: '0.0.0.0',
});

const init = async () => {

    server.route({
        method: 'GET',
        path: '/',
        handler: function (request, reply) {
            return `API running`;
        },
    });


    await server.start();
    console.log(`Server running at: ${server.info.uri}`);
};

init();
