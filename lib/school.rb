class School

  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day, student_names = [])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    "#{@start_time.to_i + hours_in_school_day}:00"
  end

  def is_full_time?
    hours_in_school_day > 4
  end

  standard_names = []

  def standard_student_names
    standard_names = student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    x = @start_time.to_i + hours_in_school_day
    if x > 12
      x -= 12
      "#{x}:00"
    else
      "#{x}:00"
    end
  end

end
