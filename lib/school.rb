class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster.detect do |a, b|
      if a == grade
        return b
      end
    end
  end

  def sort
    sorted_roster = {}
    roster.each do |a, b|
      sorted_roster[a] = b.sort
    end
    sorted_roster
  end
end
