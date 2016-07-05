routesFactory = require "./routes"

module.exports = ( app )->

    ( names = [] )->

        routes = routesFactory( app )

        if typeof names is "string"
            names = [ names ]

        for name in names
            routes name