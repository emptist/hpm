# subscriptions
Meteor.subscribe "bsckpisChannel"
Meteor.subscribe "hospitalsChannel"

logSet = (a,b) ->
	r = Session.set a, b
	share.consolelog "#{a} now is #{b}"
	r

HPMRouter = Backbone.Router.extend
	routes: # ! this order matters ! stupid!!
		"": "main"
		"bsckpis": "bsckpis"
		
		"hospitals": "hospitals" 
		"newKpiForm": "newKpiForm"
		"newHospitalForm": "newHospitalForm"
		
		":detail": "detail" # 查看单个维度
		
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
	
	detail: (detail) ->
		#logSet "currentView", "detail"
		logSet "currentDetail",  decodeURI detail
		# share.consolelog "detail #{Session.get "currentDetail"}"
	
###
	hospitalClass: (hospitalClass)->
		logSet "currentView", "hospitalClass"
		logSet "currentHospitalClass", decodeURI hospitalClass
###

Meteor.startup -> # 开始历史记录
	new HPMRouter
	Backbone.history.start pushState: true

