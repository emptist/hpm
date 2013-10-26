Template.bsckpis.show = ->
	share.isViewing("bsckpis","perspective") #or share.isViewing "perspective"

Template.bsckpis.showButtons = ->
	share.showAsEditMode()

Template.bsckpis.kpis = ->
	if share.isViewing "perspective"
		share.KPIs.find perspective: Session.get "currentDetail" 
	else
		share.consolelog share.KPIs.find {}, sort:{perspective: -1, category: -1, title: -1}

