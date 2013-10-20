Template.newKpiForm.show = ->
	share.isViewing "newKpiForm" 

Template.newKpiForm.events
	'click #save': (e,t) -> 
		Meteor.call "kpi", #perspective, category, title, definition, type, mesure, depts
			share.getObj e,t
			(err, id)->
				Backbone.history.navigate ('/' + decodeURI t.find("#perspective").value), 
					true #'/bsckpis', true #	

