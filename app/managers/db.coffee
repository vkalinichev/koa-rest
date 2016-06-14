db = require "../fixtures/users"

module.exports =

    list: ->
        db

    get: ( id )->
        db[ +id ]

    create: ( name )->
        length = db.length
        db.push id: length, name: name
        db[ length ]

    update: ( id, name )->
        db[ +id ] = id: +id, name: name

    delete: ( id )->
        delete db[ +id ]