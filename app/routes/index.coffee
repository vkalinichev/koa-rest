Router = require "koa-router"
BaseController = require "../controllers/base_controller"
usersController = BaseController "users"
tasksController = BaseController "tasks"

module.exports = ( app )->

    router = new Router()

    router
        .get "/users", usersController.list
        .get "/users/:id", usersController.get
        .post "/users/", usersController.create
        .put "/users/:id", usersController.update
        .delete "/users/:id", usersController.delete

    router
        .get "/tasks", tasksController.list
        .get "/tasks/:id", tasksController.get
        .post "/tasks/", tasksController.create
        .put "/tasks/:id", tasksController.update
        .delete "/tasks/:id", tasksController.delete

    app.use router.middleware()