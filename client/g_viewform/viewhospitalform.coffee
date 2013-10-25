Template.viewHospitalForm.showButtons =->
	share.showAsEditMode()

Template.viewHospitalForm.events
	
	'click #editHospitalForm':(e,t) ->
		share.consolelog "viewHospitalForm event editHospitalForm #{@._id}"
		Session.set "editting #{@._id}", true #"editting #{t.data._id}", true
	
	'click #removeHospital': (e,t) ->
		share.consolelog "viewHospitalForm event removeHospital #{@._id}"
		Meteor.call "removeHospital",  @._id
	
