# modules.rb
require './inheritance.rb'

module FullName
	def full_name
		"#{first_name} #{last_name}"
	end
end

module Contactable
	def contact
		"#{first_name}.#{last_name}@example.com"
	end
end

class Person
	include FullName
	include Contactable

	attr_reader :first_name, :last_name
	def initialize first_name, last_name
		@first_name = first_name
		@last_name =last_name
	end
end

class Developer < Employee
	include Contactable
end


hannah = Person.new("Hannah", "Test")
puts hannah.full_name
puts hannah.contact.downcase

dev = Developer.new("Steve", "Anderson")
puts dev.full_name, dev.contact.downcase