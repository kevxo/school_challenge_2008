class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    "#{@hours_in_school_day += @start_time.to_i}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    cap_names = []
    @student_names.each do |name|
      cap_names << name.capitalize
    end
    cap_names
  end

  def convert_end_time_to_clock_time
    "#{(@hours_in_school_day += @start_time.to_i) - 12}:00"
  end
end
