window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = new @Collections.Notes(@notesJSON)
    view = new App.Views.Notes(collection: App.AllNotes)
    $('#container').html(view.render().el)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
