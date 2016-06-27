module.exports =

  config:
    debugMode:
        description: 'Log certain details to the console'
        type: 'boolean'
        default: 'false'

  activate: (state) ->
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
