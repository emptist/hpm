share.getHospitalObj = (e, t) ->
	getValue = (id) -> 
		t.find(id).value
	hospitalClass: getValue "#hospitalClass"
	category: getValue "#category"
	title: getValue "#title"
	province: getValue "#province"