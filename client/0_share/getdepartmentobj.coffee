share.getDepartmentObj = (e, t) ->
	
	getValue = (id) -> 
		share.consolelog t.find(id).value
	hospital: getValue "input#hospital"
	department: getValue "input#department" 
	category: getValue "input#category"
	hd: (getValue "input#hospital") + '-' +(getValue "input#department" )
	departmentKPIs: []#getValue "ul#departmentKPIsTmp" # we should geKPIhe bsc object here