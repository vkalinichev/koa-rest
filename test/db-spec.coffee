require "co-mocha"
expect = require("chai").expect

usersDb = (require "../app/managers/db")( "users" )
tasksDb = (require "../app/managers/db")( "tasks" )

fixtureUsers = require "../app/fixtures/users"
fixtureTasks = require "../app/fixtures/tasks"

describe "data Tests", ->

    it "Get access to users data from db manager", ->

        try allData = yield usersDb.list()
        catch error then err = error

        expect( allData?.length ).to.equal( fixtureUsers.length )

        try myItem = yield usersDb.get( 2 )
        catch error then err = error

        expect( myItem ).to.eql fixtureUsers[2]
        expect( err ).to.be.undefined

    it "Get access to tasks data from db manager", ->

        try allData = yield tasksDb.list()
        catch error then err = error

        expect( allData?.length ).to.equal( fixtureTasks.length )

        try myItem = yield tasksDb.get( 2 )
        catch error then err = error

        expect( myItem ).to.eql fixtureTasks[2]
        expect( err ).to.be.undefined