Template.header.events
	'click #bsckpis': -> 
		Backbone.history.navigate '/bsckpis', true # show as kpis page
	
	'click #hospitals': -> 
		Backbone.history.navigate '/hospitals', true # show as hospitals page
		#Session.set "currentView", "hospitals" # this should not be needed but navigation doesn't work

Template.header.adminLoggedIn = ->
	share.adminLoggedIn()
