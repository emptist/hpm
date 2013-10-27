share.logSet = (a,b) ->
	r = Session.set a, b
	share.consolelog "now #{a} is #{b}"
	r
