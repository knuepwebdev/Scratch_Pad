class App.Views.ShowNote extends Backbone.View
	template: JST['notes/show']
	className: 'note'
	events:
		'change': 'save'
		'keydown .note-title': 'blurIfEnter' 
		'focus .note-title, .note-content': 'beginEditing'
		'blur .note-title, .note-content': 'endEditing'
	render: ->
		@$el.html(@template(note: @model))
		this

	showNote: ->
		Backbone.history.navigate(@model.url(), trigger: true)
		false

	save: ->
		@model.set
			title: @$('.note-title').val()
			content: @$('.note-content').val()
		@model.save()
		false

	blurIfEnter: (e) ->
		if e.keyCode is 13
			@$(':input').blur()

	beginEditing: ->
		@$el.addClass('editing')
	endEditing: ->
		@$el.removeClass('editing')