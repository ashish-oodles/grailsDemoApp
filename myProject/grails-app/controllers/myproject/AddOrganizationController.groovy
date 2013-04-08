package myproject

class AddOrganizationController {
	static scaffold = true;
    def index() {
		redirect(action: "add")
	}
	
	def add = {
		def status = params.status;
		[status:status]
	}
	
	def addOperation = {
		def orgName = params.organizationName;
		def status = 0;
		def checkOrg = Organization.findByOrganizationName(orgName);
		if(checkOrg == null)
		{
			def org = new Organization(organizationName:orgName);
			org.save(flush:true);
			status = 1;
		}
		else
		{
			status = 2;
		}
		redirect(action: "add", params: [status: status])
	}
}
