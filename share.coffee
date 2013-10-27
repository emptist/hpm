share.KPIs = new Meteor.Collection "bsckpis" # expose this for debugging
@Hospitals= new Meteor.Collection "hospitals"
@Departments= new Meteor.Collection "departments"
	
share.Departments = @Departments
share.Hospitals = @Hospitals 

# supadmin is admin for the whole service of all hospitals
supadmins = ['j@k.com']
admins = ['j@k.com','h@l.com','y@u.com']

currentUser = ->
	Meteor.user()?.emails?[0].address

share.supadminLoggedIn = -> 
	currentUser() in supadmins

share.adminLoggedIn = -> 
	currentUser() in admins
 #is "jshare.k.com"

share.showAsEditMode = -> # causing exeptions
	Session.get "showButtons"

share.consolelog = (t)->
	console.log t
	t	