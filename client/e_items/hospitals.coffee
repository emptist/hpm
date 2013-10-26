Template.hospitals.show = ->
	share.isViewing("hospitals", "hospital", "hospitalClass")# or 
	#	share.isViewing("hospital") 

Template.hospitals.showButtons = -> # 打印模式不显示按钮
	share.showAsEditMode()


Template.hospitals.hospitals = -> # class 三级分级 type 公立等 title 医院名
	if share.isViewing "hospital" 
		 	share.Hospitals.find hospital: Session.get "currentDetail"
 	else if share.isViewing "hospitalClass" 
 		share.Hospitals.find hospitalClass: Session.get "currentDetail"
	else if share.isViewing "hospitals" 
		share.Hospitals.find {} #, sort: {hospitalClass: -1, category: -1, hospital: -1}
		
