share.viewDetail = (viewName, t)->
	share.consolelog t, viewName
	Backbone.history.navigate('/' + viewName + '&' + decodeURI t.find('#' + viewName).value , 
					true )