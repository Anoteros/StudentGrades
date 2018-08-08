class School
  attr_accessor :student, :grade, :roster


  def initialize
    @roster = [
        {
            grade: 10,
            teacher: "Mr. Smith",
            students: ["Greg", "David", "Jordan"]
        }
    ]

  end

  def add(name, level)
    # If grade exists, add the student. Otherwise throw an error.
      if roster.any? {|h| h[:grade] === level}
          roster.each do |k|
            if k[:grade] == level
              k[:students].append(name)
              puts "Successfully added student to Grade #{level}"
            end
          end
      else
        puts "That class does not exist. You must first add the class to the school."
      end
  end

  def add_grade_level(teacher, level)
    class_exists = false
    # Check if the grade already exists
    roster.each do |k|
      if k[:grade] == level
        class_exists = true
        break
      end
    end
    # If the class cannot be found then add it to the classes.
    if !class_exists
      a = Array.new
      roster.append({ grade: level, teacher: teacher, students: a})
      puts "Class added to School successfully."
    else
      puts "That class already exists and is taught by #{teacher}"
    end
  end

  # For each entry in the roster, list it's grade and students
  def all
    roster.each do |k|
      if k[:students]
       puts "Grade #{k[:grade]} : #{k[:students]}"
      end
    end
  end

  # Return all students in the given grade
  def grade(grade)
    roster.each do |k|
      if k[:grade] == grade
        puts "The following students are in Grade #{grade}: #{k[:students]}"
      end
    end
  end

  # Sort all students : first by grade level then by name.
  def sort
    sorted = roster.sort_by { |k| k[:grade]}
    sorted.each do |x|
      x[:students].sort_by! { |v| v }
    end
    puts sorted
  end
end


s = School.new
s.add_grade_level("Mr. Rogers", 5)
s.add("Tim", 5)
s.sort
