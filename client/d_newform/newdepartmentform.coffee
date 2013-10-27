Template.newDepartmentForm.show = ->
	share.isViewing "newDepartmentForm" #,"departments" 

Template.newDepartmentForm.currentHospital = ->
	Session.get "currentHospital"

Template.newDepartmentForm.events
	'click #save': (e,t) -> 
		share.consolelog t.find( "input#department").value
		Meteor.call "department", 
			share.consolelog share.getDepartmentObj e, t
			(err, id)->
				#Session.set "currentView", "hospital"
				share.consolelog share.viewDetail "department",t
