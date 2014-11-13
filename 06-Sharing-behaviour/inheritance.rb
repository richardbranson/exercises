#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee
 attr_accessor :first_name, :last_name

 def initialize(first_name, last_name)
 	@first_name = first_name
 	@last_name = last_name
 end

def full_name
	"#{@first_name} #{@last_name}"
end

end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee

	def initialize(first_name, last_name, title, email)
		super(first_name, last_name)
		@title = title
		@email = email
	end

	def full_name
		"#{@first_name} #{@last_name} #{@title}"
	end

	def contact
		@email
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
	def initialize(first_name, last_name, twitter_username="@acme")
		super(first_name, last_name)
		@twitter_username = twitter_username
	end

	def contact
		@twitter_username
	end


end

manager = Manager.new("Bob", "Builder", "MBA", "bob@acme.com")
marketer = Marketer.new("Seth", "Godin", "@seth")
marketer2 = Marketer.new("Seth", "Godin")

puts "Name: ", manager.full_name
puts "Contact: ", manager.contact

puts "Name: ", marketer.full_name
puts "Contact: ", marketer.contact

puts "Name: ", marketer2.full_name
puts "Contact: ", marketer2.contact



# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers
