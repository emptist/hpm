Template.viewDepartmentForm.showButtons =->
	share.showAsEditMode()

Template.viewDepartmentForm.department =->
	share.consolelog "#{this.value}"
	
	#share.consolelog this.department #s.find hospital: Session.get "currentHospital"

Template.viewDepartmentForm.events
	
	'click #editDepartmentForm': (e,t) ->
		share.consolelog "viewDepartmentForm event editDepartmentForm #{@._id}"
		Session.set "editting #{@._id}", true #"editting #{t.data._id}", true
	
	'click #removeDepartment': (e,t) ->
		share.consolelog "viewDepartmentForm event removeDepartment #{@._id}"
		Meteor.call "removeDepartment",  @._id
	
