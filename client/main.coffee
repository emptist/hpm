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
		":perspective": "perspective" #for viewing  a single kpi item
		
	main: ->
		logSet "currentView","main"
	
	bsckpis: ->
		logSet "currentView","bsckpis"	
	
	hospitals: ->
		logSet "currentView", "hospitals"

	newKpiForm: -> 
		logSet "currentView", "newKpiForm"
	
	perspective: (perspective) ->
		logSet "currentView", "perspective"
		logSet "currentKPI",  decodeURI perspective
		# share.consolelog "perspective #{Session.get "currentKPI"}"
	

Meteor.startup -> # 开始历史记录
	new HPMRouter
	Backbone.history.start pushState: true