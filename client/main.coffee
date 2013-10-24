Template.main.events 
	'click a[href^= "/" ]' : (e,t) ->
		pn = e.currentTarget.pathname
		# share.consolelog  "clicked #{decodeURI pn}"
		Backbone.history.navigate decodeURI(pn), true

		e.preventDefault()

Template.main.adminLoggedIn = ->
	share.adminLoggedIn()