class School
  attr_accessor :student, :grade, :roster

  def initialize
    @roster = { }
  end

  # Add student and grade level to student roster
  def add(student, grade)
    # If the grade doesn't exist then initialize it
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student
      # Otherwise push student onto key's array of vals
    else
      roster[grade] << student
    end
  end

  # For each entry in the roster, list it's grade and students
  def all
    roster.each do |key , value|
       puts "#{value} is in grade #{key}"
    end
  end

  # Return all students in the given grade
  def grade(grade)
    roster.each do |k, v|
      if k == grade
        return v
      end
    end
  end

  def sort
    sorted_roster = roster.sort_by {|k, v| k}
    puts sorted_roster
  end

end

