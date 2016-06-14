Router = require "koa-router"
BaseController = require "../controllers/base_controller"
baseController = new BaseController

module.exports = ( app )->

    router = new Router()

    router
        .get "/users", baseController.list
        .get "/users/:id", baseController.get
        .post "/users/", baseController.create
        .put "/users/:id", baseController.update
        .delete "/users/:id", baseController.delete

    app.use router.middleware()