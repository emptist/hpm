isViewing = (viewName)->
	Session.get('currentView') is viewName
share.isViewing = isViewing