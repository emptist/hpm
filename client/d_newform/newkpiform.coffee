Template.newKpiForm.show = ->
	share.isViewing "newKpiForm" 
	
Template.newKpiForm.events
	'click #save': (e,t) -> 
		Meteor.call "kpi", #perspective, category, title, definition, type, mesure, depts
			share.getKpiObj e,t
			(err, id)->
				share.viewDetail "perspective",t

