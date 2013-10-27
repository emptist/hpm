Template.departments.show = ->
	share.isViewing "departments", "department"  
	
Template.departments.showButtons = -> # 打印模式不显示按钮
	share.showAsEditMode()


Template.departments.departments = ->  # class 三级分级 type 公立等 title 医院名
	if share.isViewing "departments" 
		share.consolelog share.Departments.find hospital: Session.get "currentHospital" , 
			sort: { category: -1, department: -1}
	else if share.isViewing("department") 
		share.Departments.find hd: (Session.get "currentHospital") +'-' + (Session.get "currentDetail")

Template.departments.currentHospital = ->
	Session.get "currentHospital"

Template.departments.events
	'keypress input': (e,t)->
		if e.keyCode is 13
			Session.set "currentHospital", e.target.value
