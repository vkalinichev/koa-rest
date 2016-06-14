dbFactory = require "../managers/db"

module.exports = ( dbName )=>
    db = dbFactory( dbName )

    {
        get: (next)->
            @body = yield db.get @params.id
            yield next


        list: (next)->
            @body = yield db.list()
            yield next


        create: (next)->
            @body = yield db.create @request.body.name
            @status = 201
            yield next


        update: (next)->
            @body = yield db.update @params.id, @request.body.name
            yield next


        delete: (next)->
            yield db.delete @params.id
            @status = 204
            yield next
    }