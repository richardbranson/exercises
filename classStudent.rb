class Student
	attr_accessor :name, :major, :course, :grade

	def initialize(name, major, course, grade)
		@name = name
		@major = major
		@course = course
		@grade = grade
	end

	def grade_status
		if @grade == "F"
			"failed"
		elsif ["D", "E"].include?(@grade) && @major == @course
			"failed"
		else
			"passed"
		end
	end
	
	def summary
		puts "#{@name} has #{grade_status} in #{@major}"
	end

end



jimmy = Student.new("Jimmy", "Maths", "Maths", "A")
pepe = Student.new("Pepe", "Physics", "Maths", "F")

jimmy.summary
pepe.summary

# jimmy = Student.new
# jimmy.name = "Jimmy"
# jimmy.major = "Maths"
# jimmy.course = "Maths"
# jimmy.grade = "A"

# pepe = Student.new
# pepe.name = "Jimmy"
# pepe.major = "Physics"
# pepe.course = "Maths"
# pepe.grade = "F"

puts "#{jimmy.name} has grade: #{jimmy.grade_status} in #{jimmy.major}"
puts "#{pepe.name} has grade: #{pepe.grade_status} in #{pepe.major}"

pepe.grade = "C"
puts "#{pepe.name} has grade: #{pepe.grade_status} in #{pepe.major}"