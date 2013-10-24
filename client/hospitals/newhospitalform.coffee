Template.newHospitalForm.show = ->
	share.isViewing "newHospitalForm" 

Template.newHospitalForm.events
	'click #save': (e,t) -> 
		Meteor.call "hospital", 
		share.getObj e,t
			(err, id)->
				Backbone.history.navigate ('/' + decodeURI t.find("#hospitalClass").value), 
					true 
