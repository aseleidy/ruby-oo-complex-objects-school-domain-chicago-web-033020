# code here!
class School
  attr_reader :name, :grade  
  attr_accessor :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @name = name 
    @grade = grade 
    if !@roster[@grade]
        @roster[@grade] = @name
    else 
        @roster[@grade] << @name
    end 
  end
end 