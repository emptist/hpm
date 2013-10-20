@KPIs = new Meteor.Collection "bsckpis" # expose this for debugging
@Hospitals= new Meteor.Collection "hospitals"
	
share.KPIs = @KPIs
share.Hospitals = @Hospitals 
# supadmin is admin for the whole service of all hospitals
supadmins = ['j@k.com']
admins = ['h@l.com']
admins.push s for s in supadmins

currentUser = ->
	Meteor.user()?.emails?[0].address

share.supadminLoggedIn = -> 
	currentUser() in supadmins

share.adminLoggedIn = -> 
	currentUser() in admins
 #is "jshare.k.com"
