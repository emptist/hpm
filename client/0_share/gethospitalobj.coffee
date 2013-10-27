share.getHospitalObj = (e, t) ->
	getValue = (id) -> 
		t.find(id).value
	hospitalClass: getValue "#hospitalClass"
	category: getValue "#category"
	hospital: getValue "#hospital"
	province: getValue "#province"