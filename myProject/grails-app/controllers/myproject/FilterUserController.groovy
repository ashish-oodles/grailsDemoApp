package myproject

class FilterUserController {

    def index() {
		redirect(action:"filterPage");
	}
	
	def filterPage = {
		def org = Organization.findAll();
		[org:org]
	}
	
	def filterResult = {
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
		[result:result]
	}
}
