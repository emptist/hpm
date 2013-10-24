Template.header.rendering = ->
	Session.set "showButtons",true

Template.header.currentMode = ->
	(if share.showAsEditMode()
		"打印模式"
	else
		"編輯模式")
		
Template.header.adminLoggedIn = ->
	share.adminLoggedIn()

Template.header.events
	'click #bsckpis': -> 
		Backbone.history.navigate '/bsckpis', true # show as kpis page
	
	'click #hospitals': -> 
		Backbone.history.navigate '/hospitals', true # show as hospitals page
		#Session.set "currentView", "hospitals" # this should not be needed but navigation doesn't work
	
	'click #printable': ->
		b= share.showAsEditMode()
		Session.set("showButtons", (not b)) 
		share.consolelog "showButtons #{share.showAsEditMode()}"
