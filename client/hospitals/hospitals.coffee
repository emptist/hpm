Template.hospitals.show = ->
	share.isViewing "hospitals"

Template.hospitals.showButtons = -> # 打印模式不显示按钮
	share.showAsEditMode()

Template.hospitals.events
	'click #newHospitalForm': ->
		Backbone.history.navigate '/newHospitalForm', true

Template.hospitals.Hospitals = -> # class 三级分级 type 公立等 title 医院名
	if share.isViewing "hospitalClass"
		share.Hospitals.find hospitalClass: Session.get "currentHospitalClass"
	else
		share.Hospitals.find {}, sort:{hospitalClass: -1, type: -1, title: -1}

