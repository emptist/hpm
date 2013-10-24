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
		":perspective": "perspective" # 查看单个维度
		":hospitalClass": "hospitalClass" # 查看单个医院级别
		
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
	
	hospitalClass: (hospitalClass)->
		logSet "currentView", "hospitalClass"
		logSet "currentHopitalClass", decodeURI hospitalClass
	
	perspective: (perspective) ->
		logSet "currentView", "perspective"
		logSet "currentPerspective",  decodeURI perspective
		# share.consolelog "perspective #{Session.get "currentPerspective"}"
	

Meteor.startup -> # 开始历史记录
	new HPMRouter
	Backbone.history.start pushState: true

