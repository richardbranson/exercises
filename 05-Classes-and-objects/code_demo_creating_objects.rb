
#Code Demo Creating Objects.
#Why use Objects?
# => Follow allowing with the instructor, comment out code and run the file to test your assumptions.
#TIME: 45 min

# #These are 3 hashes that have the same fields and share a similar behavior
 jimmy = {}
 jimmy[:name] = "Jimmy Mazzy"
 jimmy[:major] = "Math"
 jimmy[:course] = "Math"
 jimmy[:grade]= "A"
#
 pepe = {}
 pepe[:name]= "Pepe Phaenagrotis"
 pepe[:major] = "Music"
 pepe[:course] = "Math"
 pepe[:grade] = "C"
#
 edward = {}
 edward[:name] = "Edward Ellis"
 edward[:major] = "Math"
 edward[:course] = "Math"
 edward[:grade] = "D"
#
def grade_status(student)
  if student[:grade] == "F"
    "failed"
  elsif ["D", "E"].include?(student[:grade]) && student[:major] == student[:course]
    # if the course is their major, they need at least a C to pass
    "failed"
  else
    "passed"
  end
end

# puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
# puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
# puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"
#

###############################################################################
# Start coding along here


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
    elsif [ "D", "E"].include?(@grade) && @major == @course
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

pepe.grade = "C"


pepe.summary

