Template.editDepartmentForm.show = ->
	true #since this should display in place so don't use share.isViewing "editDepartmentForm"

Template.editDepartmentForm.events
	'click #save': (e,t) -> 
		Meteor.call "getDepartmentObj", 
			share.getDepartmentObj e,t
			(err, id) ->
				share.consolelog "editDepartmentForm event save #{t.data._id}" # is known that share.._id here is undefined 
				Session.set "editting #{t.data._id}", false
		
