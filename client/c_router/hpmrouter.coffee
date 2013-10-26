# subscriptions
Meteor.subscribe "bsckpisChannel"
Meteor.subscribe "hospitalsChannel"

logSet = (a,b) ->
	r = Session.set a, b
	share.consolelog "now #{a} is #{b}"
	r

HPMRouter = Backbone.Router.extend
	routes: # ! this order matters ! stupid!!
		"": "main"
		"bsckpis": "bsckpis"
		
		"hospitals": "hospitals" 
		"newKpiForm": "newKpiForm"
		"newHospitalForm": "newHospitalForm"
		
		":detail": "detail" # 查看single object, see below
		
	main: ->
		logSet "currentView","main"
	
	bsckpis: ->
		logSet "currentView","bsckpis"	
	
	hospitals: ->
		logSet "currentView", "hospitals"

	newKpiForm: -> 
		logSet "currentView", "newKpiForm"

	newHospitalForm: -> 
		logSet "currentView", "newHospitalForm"
	
	detail: (detail) -> # detail is string formatted like 'view-detail'
		sp = detail.split '&'
		logSet "currentView", decodeURI sp[0] # this could be everything that contains details
		logSet "currentDetail",  decodeURI sp[1] # this leading to one detail of the viewed objected
		
###
	hospitalClass: (hospitalClass)->
		logSet "currentView", "hospitalClass"
		logSet "currentHospitalClass", decodeURI hospitalClass
###

Meteor.startup -> # 开始历史记录
	new HPMRouter
	Backbone.history.start pushState: true

