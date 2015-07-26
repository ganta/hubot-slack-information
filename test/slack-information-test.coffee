assert = require 'power-assert'
sinon = require 'sinon'

describe 'slack-information', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/slack-information')(@robot)

  it 'registers a respond listener', ->
    assert.ok(@robot.respond.calledWith(/whoami/))
