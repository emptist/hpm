Template.newHospitalForm.show = ->
	share.isViewing "newHospitalForm" 

Template.newHospitalForm.events
	'click #save': (e,t) -> 
		Meteor.call "hospital", 
			share.getHospitalObj e,t
			(err, id)->
				Session.set "currentView", "hospital"
				Backbone.history.navigate ('/' + decodeURI t.find("#title").value), 
					true 
