class School

attr_accessor :name, :roster

  def intitialize(school_name)
    @school = school_name
    @roster = {}
  end
end
