share.getDepartmentObj = (e, t) ->
	getValue = (id) -> 
		t.find(id).value
	category: getValue "#category"
	title: getValue "#title"
	teamkpis: {} # we should get the bsc object here
	