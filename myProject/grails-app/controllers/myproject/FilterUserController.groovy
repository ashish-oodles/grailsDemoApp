package myproject

class FilterUserController {
	def scaffold = true
    def index() {
		redirect(action:"filterPage");
	}
	
	def filterPage = {
		def org = Organization.findAll();
		println "org"+org;
		[org:org]
	}
	
	def filterResult2 = {
		def gender = params.gender;
		def fromage = params.fromage;
		def toage = params.toage;
		def org = Organization.get(params.orgid);
		def c = User.createCriteria();
		def result = c.list{
			between("age",fromage.toInteger(),toage.toInteger())
			and
			{eq("gender",gender)}
			and
			{eq("organization",org)}
		}
		
		//render "Updated";
		render(template:"/filterUser/filterResult", model:[result: result] )
		return
	}
}
