Meteor.publish "bsckpisChannel" , -> 
		share.KPIs.find()

Meteor.publish "hospitalsChannel" , -> 
		share.Hospitals.find()

Meteor.publish "departmentsChannel" , -> 
		share.Departments.find()



Meteor.methods
	# kpis in four perspectives
	removeKPI: (id)->
		if share.adminLoggedIn
			share.KPIs.remove _id: id 

	removeHospital: (id)->
		if share.adminLoggedIn
			share.Hospitals.remove _id: id 		
	
	removeDepartment: (id)->
		if share.adminLoggedIn
			share.Departments.remove _id: id

	kpi: (obj)-> 
		# return Mongodb object _id
		if share.adminLoggedIn
			obj.createdOn = new Date
			share.consolelog share.KPIs.update title: obj.title ,
			#share.KPIs.insert 
				obj, 
				upsert: true
				
	department: (obj)->
		if share.adminLoggedIn
			obj.createdOn = new Date
			share.consolelog share.Departments.update department: obj.department,
				obj,
				upsert: true

	hospital: (obj)->
		if share.adminLoggedIn
			obj.createdOn = new Date
			share.consolelog share.Hospitals.update hospital: obj.hospital,
				obj,
				upsert: true
	
			###
			share.KPIs.insert {# <- 必须用大括号才能简写以下代码
				content#:content
				title#:	title
				slug#:	slug
				createdOn: new Date}# <- 必须用大括号才能简写
			###
