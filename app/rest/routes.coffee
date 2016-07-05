Router = require "koa-router"
BaseController = require "./controller"

module.exports = ( app )->

    ( name )->

        router = Router()
        controller = BaseController( name )

        router
            .get "/#{ name }", controller.list
            .get "/#{ name }/:id", controller.get
            .post "/#{ name }/", controller.create
            .put "/#{ name }/:id", controller.update
            .delete "/#{ name }/:id", controller.delete

        app.use( router.middleware() )