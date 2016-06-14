koa = require "koa"
config = require "config"

app = koa()

require("./helpers/bodyparser")(app)

require("./routes")(app)

app.listen config.server.port, ->
    console.log "%s listening at port %d", config.app.name, config.server.port
