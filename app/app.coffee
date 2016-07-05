koa = require "koa"
config = require "config"
restFactory = require "./rest"
BodyParser = require "./middlewares/bodyparser"

app = koa()

rest = restFactory( app )
BodyParser( app )

rest [
    "users"
    "tasks"
]

app.listen config.server.port, ->
    console.log "%s listening at port %d", config.app.name, config.server.port
