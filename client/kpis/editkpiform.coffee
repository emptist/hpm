Template.editKpiForm.show = ->
	true or share.isViewing "editKpiForm"

Template.editKpiForm.events
	'click #save': (e,t) -> 
		Meteor.call "kpi", #perspective, category, title, definition, type, mesure, depts
			share.getObj e,t
			(err, id) ->
				share.consolelog "editKpiForm event save #{t.data._id}" # is known that share.._id here is undefined 
				Session.set "editting #{t.data._id}", false
		
