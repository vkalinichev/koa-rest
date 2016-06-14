db = [
    { id:0, name: "test0" }
    { id:1, name: "test1" }
    { id:2, name: "test2" }
]

module.exports =

    getAll: ->
        db

    getById: ( id )->
        db[ +id ]

    setNewId: ( name )->
        length = db.length
        db.push id: length, name: name
        db[ length ]

    updateId: ( id, name )->
        db[ +id ] = id: +id, name: name

    removeId: ( id )->
        delete db[ +id ]