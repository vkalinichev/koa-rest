#mocha = require "mocha"
require "co-mocha"
expect = require("chai").expect

db = require "../app/managers/db"
item = { id:2, name: "test2" }

describe 'db Tests', ->
    it "Get access to data from manager", ->
        try allData = yield db.getAll()
        catch error then err = error

        expect( allData?.length ).to.equal( 3 )

        try myItem = yield db.getById( 2 )
        catch error then err = error

        expect( myItem ).to.eql item
        expect( err ).to.be.undefined