Router = require 'koa-router'
usersController = require '../controllers/indexController'

module.exports = ( app )->

    router = new Router()

    router
        .get( '/users', usersController.list )
        .get( '/users/:id', usersController.getId )
        .post( '/users/', usersController.createItem )
        .put( '/users/:id', usersController.updateItem )
        .delete( '/users/:id', usersController.removeItem )

    app.use router.middleware()