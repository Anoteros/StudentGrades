class School
  attr_accessor :student, :grade, :roster

  def initialize
    @roster = { }
  end

  def add(student, grade)
    roster[grade] = []
    roster[grade] << student
  end

  def all
    roster.each do |key , value|
      puts "#{value} is in grade #{key}"
    end
  end

  def grade(grade)
    puts roster[grade]
  end


end

