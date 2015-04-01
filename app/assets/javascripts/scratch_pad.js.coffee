window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	@AllNotes = [
  		{id: 1, title: 'The first note', content: "1st note's content"}
			{id: 2, title: 'Second Note', content: "2nd note's content"}
			{id: 3, title: 'Third Note', content: "3rd note's content"}
  	]
  	new @Routers.ScratchPadRouter
  	Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
