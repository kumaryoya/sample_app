User.new

User.new.class.superclass

User.new.class.superclass.superclass

user.name.class

user.email.class

user.created_at.class

user.updated_at.class

User.find_by(name: "Michael Hartl")

User.find_by_name("Michael Hartl")

User.all.class

User.all.length

user.name = "おおくまりょうや"
user.save

user.update(email: "aaa@aaa")

* user.created_at = 1.year.ago *
user.save

u = User.new(name: "", email: "")
u.invalid?

u.errors.messages

u.errors.messages[:email]

user = User.new(name: "a" * 51, email: "aaa@aaa")

user = User.new(name: "aaa", email: "a" * 255 + "@aaa")

user.errors.messages
=> {:name=>["is too long (maximum is 50 characters)"]}
user.errors.messages
=> {:email=>["is too long (maximum is 255 characters)"]}

