class Student
  attr_accessor :name, :grade, :subjects

  def initialize(name, grade, subjects)
    @name = name
    @grade = grade
    @subjects = subjects
  end

  def display_info(&block)
    puts "Student: #{name}"
    puts "Grade: #{grade}"
    puts "Subjects:"
    subjects.each { |subject| puts "- #{subject}" }
    yield if block_given?
  end
end

# Example usage
student = Student.new("Alice", 10, ["Math", "Science", "History"])

student.display_info do
  puts "Performing a specific action..."
end
