# subscriptions
Meteor.subscribe "bsckpisChannel"
Meteor.subscribe "hospitalsChannel"

logSetCurrentView = (currentView)->
	share.logSet "currentView", currentView

HPMRouter = Backbone.Router.extend
	routes: # ! this order matters ! stupid!!
	
		"": "main"
		"bsckpis": "bsckpis"
		"newKpiForm": "newKpiForm"
		"hospitals": "hospitals" 
		"newHospitalForm": "newHospitalForm"
		"departments": "departments"
		"newDepartmentForm": "newDepartmentForm"

		":detail": "detail" # 查看single object, see below
		
	main: ->
		logSetCurrentView "main"
	
	bsckpis: ->
		logSetCurrentView "bsckpis"	
	
	departments: ->
		logSetCurrentView "departments"

	hospitals: ->
		logSetCurrentView "hospitals"

	newKpiForm: -> 
		logSetCurrentView "newKpiForm"

	newHospitalForm: -> 
		logSetCurrentView "newHospitalForm"
	
	newDepartmentForm: -> 
		logSetCurrentView "newDepartmentForm"

	detail: (detail) -> # detail is string formatted like 'view-detail'
		sp = detail.split '&'
		logSetCurrentView decodeURI sp[0] # this could be everything that contains details
		share.logSet "currentDetail",  decodeURI sp[1] # this leading to one detail of the viewed objected
		
###
	hospitalClass: (hospitalClass)->
		logSetCurrentView, "hospitalClass"
		logSetCurrentHospitalClass, decodeURI hospitalClass
###

Meteor.startup -> # 开始历史记录
	new HPMRouter
	Backbone.history.start pushState: true

