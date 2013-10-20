getKpiObj = (e, t) ->
	getValue = (id) -> 
		t.find(id).value
	perspective: getValue "#perspective"
	category: getValue "#category"
	title: getValue "#title"
	definition: getValue "#definition"
	type: getValue "#type" # the greater the better vs. the less the better vs. the closer the better
	mesure: getValue "#mesure" # how to score
	depts: getValue "#depts" # for which dept

share.getObj= getKpiObj


