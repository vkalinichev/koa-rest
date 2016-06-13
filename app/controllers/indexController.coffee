myDb = require "../managers/testDbManager"

module.exports =

    getId: (next)->
        @body = yield myDb.getById @params.id
        yield next


    list: (next)->
        @body = yield myDb.getAll()
        yield next


    createItem: (next)->
        @body = yield myDb.setNewId @request.body.name
        @status = 201
        yield next


    updateItem: (next)->
        @body = yield myDb.updateId @params.id, @request.body.name
        yield next


    removeItem: (next)->
        yield myDb.removeId @params.id
        @status = 204
        yield next
