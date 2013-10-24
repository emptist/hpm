Template.bsckpis.show = ->
	(share.isViewing "bsckpis") or (share.isViewing "perspective")

Template.bsckpis.showButtons = ->
	share.showAsEditMode()

Template.bsckpis.events
	'click #newKpiForm': ->
		Backbone.history.navigate '/newKpiForm', true

Template.bsckpis.kpis = ->
	if share.isViewing "perspective"
		share.KPIs.find perspective: Session.get "currentPerspective" 
	else
		share.consolelog share.KPIs.find {}, sort:{perspective: -1, category: -1, title: -1}

