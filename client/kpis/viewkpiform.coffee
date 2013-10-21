Template.viewKpiForm.showButtons =->
	share.showAsEditMode()

Template.viewKpiForm.events
	
	'click #editKpiForm':(e,t) ->
		share.consolelog "viewKpiForm event editKpiForm #{@._id}"
		Session.set "editting #{@._id}", true #"editting #{t.data._id}", true
	
	'click #removeKPI':	(e,t) ->
		share.consolelog "viewKpiForm event removeKPI #{@._id}"
		Meteor.call "removeKPI", @._id
	
