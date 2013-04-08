package myproject

class AddUserController {

    def index() { 
		redirect(action:"add");
	}
	
	def add = {
		def status = params.status;
		def org = Organization.findAll();
		[status:status, org:org];
	}
	def addOperation = {
		def status = 0;
		if((params.name != null)&& (params.age != null)&&(params.gender != null)&&(params.password != null))
		{
			def checkUser = User.findByName(params.name);
			if(checkUser == null)
			{
				def u = new User(name:params.name,age:params.age, password:params.password, gender:params.gender);
				def org = Organization.get(params.orgid);
				u.organization = org;
				u.save(flush:true);
				status = 1;
			}
			else
			{
				status = 2;
			}
		}
		redirect(action: "add", params: [status: status])
	}
}
