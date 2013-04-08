package myproject

class LoginController {

    def index() { 
		redirect(action:"loginPage");
	}
	def loginPage = {
		
	}
	
	def loginOperation = {
		def user = params.name;
		def pass = params.password;
		def status = 0;
		def myUser = User.findByName(user);
		if((myUser != null))
		{
			if((user == myUser.name)&&(pass == myUser.password))
			{
				def orgData = myUser.organization;
				render(view:"success", model:[user:myUser, org:orgData]);
			}
			else
			{
				render(view:"failed");          
			}
		}
		else
		{
			render(view:"failed");
		}
		
	}
	
	/*def success = {
		def userData = User.get(params.myId);
		def orgData = userData.organization;
		[user:userData, org:orgData];
	}
	
	def failed = {
		
	}*/
}
