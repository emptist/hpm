Template.editHospitalForm.show = ->
	true or share.isViewing "editHospitalForm"

Template.editHospitalForm.events
	'click #save': (e,t) -> 
		Meteor.call "hospital", #perspective, category, title, definition, type, mesure, depts
			share.getHospitalObj e,t
			(err, id) ->
				share.consolelog "editHospitalForm event save #{t.data._id}" # is known that share.._id here is undefined 
				Session.set "editting #{t.data._id}", false
		
