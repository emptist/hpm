Template.hospitals.show = ->
	share.isViewing "hospitals"

Template.hospitals.showButtons = -> # 打印模式不显示按钮
	share.showAsEditMode()


Template.hospitals.hospitals = -> # class 三级分级 type 公立等 title 医院名
	
	if share.isViewing "hospitalClass"
		share.consolelog share.Hospitals.find hospitalClass: Session.get "currentHospitalClass"
	else
		share.consolelog share.Hospitals.find {}, sort:{hospitalClass: -1, category: -1, title: -1}

Template.hospitals.events
	'click #newHospitalForm': ->
		Backbone.history.navigate '/newHospitalForm', true
