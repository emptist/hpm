share.isViewing = (viewName...)->
	#share.consolelog "now isViewing #{viewName}"
	share.consolelog Session.get('currentView') in viewName
