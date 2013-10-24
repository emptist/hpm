share.isViewing = (viewName)->
	Session.get('currentView') is viewName