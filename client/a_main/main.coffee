# subscriptions
Meteor.subscribe "bsckpisChannel"
Meteor.subscribe "hospitalsChannel"

Template.main.events 
	'click a[href^= "/" ]' : (e,t) ->  # means (a.href)a[href] ="/"
		pn = e.currentTarget.pathname   
		Backbone.history.navigate decodeURI(pn), true

		e.preventDefault()

Template.main.adminLoggedIn = ->
	share.adminLoggedIn()