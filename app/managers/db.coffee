module.exports = ( dbName )=>

    try
        data = require "../fixtures/#{ dbName }"
    catch error
        data = []
        console.log error

    {
        list: ->
            data

        get: (id)->
            data[+id]

        create: (name)->
            length = data.length
            data.push id: length, name: name
            data[length]

        update: (id, name)->
            data[+id] =
                id: +id, name: name

        delete: (id)->
            delete data[+id]
    }