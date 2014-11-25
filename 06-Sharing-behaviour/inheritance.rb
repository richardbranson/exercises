<<<<<<< HEAD
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
=======
require './employee'
require './manager'
require './marekteer'

manager = Manager.new("Bob", "Builder", "MBA", "bob@acme.org")

marketer = Marketer.new("Seth", "Godin", "@seth")

marketer2 = Marketer.new("Jo" , "Johannson")
puts "Name: ", manager.full_name
puts "Contact: ", manager.contact
>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27

puts "Name: ", marketer.full_name
puts "Contact:", marketer.contact


<<<<<<< HEAD
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
=======
puts "Name: ", marketer2.full_name
puts "Contact:", marketer2.contact

>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27
