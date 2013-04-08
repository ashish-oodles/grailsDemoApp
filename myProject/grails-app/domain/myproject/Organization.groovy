package myproject

class Organization {
	
	String organizationName;
	Date dateCreated;
    static hasMany = [user:User];
}
