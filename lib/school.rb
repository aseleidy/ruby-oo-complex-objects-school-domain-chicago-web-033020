# code here!
require 'pry'
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
        @roster[@grade] = []
        @roster[@grade] << @name
    else 
        @roster[@grade] << @name
    end
  end 
    
  def grade(grade)
      @roster[grade]
  end
  
  def sort 
    sorted_roster = @roster.map do |grade, students|
       binding.pry
      students.sort
    end
   sorted_roster
  end 
    
    
end 