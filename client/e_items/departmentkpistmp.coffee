Template.departmentKPIsTmp.show = ->
	share.isViewing "departmentKPIsTmp","newDepartmentForm"

Template.departmentKPIsTmp.showButtons = ->
	share.showAsEditMode()

Template.departmentKPIsTmp.departmentKPIsTmp = ->
	if share.isViewing "departmentKPIsTmp"
		share.DepartmentKPIs.find department: @.department #Session.get "currentDetail" 
	else
		share.consolelog share.KPIs.find {}, sort:{perspective: -1, category: -1, title: -1}

