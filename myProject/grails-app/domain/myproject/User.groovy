package myproject

class User {
	String name;
	String password;
	Integer age;
	String gender;
	Date dateCreated;
    static belongsTo = [organization:Organization];
}
