class Appointment
  attr_accessor :location, :purpose, :hour, :min
  def initialize(location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
  end
end

class MonthlyAppointment < Appointment
  attr_accessor :day
  def initialize(location, purpose, hour, min, day)
    super(location, purpose, hour, min)
    @day = day
  end

  def occurs_on?(day)
    day == @day 
  end

  def to_s
    "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a las(s) #{@hour}:#{@min}"
  end
end

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    hour == @hour && min == @min
  end

  def to_s
    "Reunión diaria en #{@location} sobre #{@purpose} a las(s) #{@hour}:#{@min}"
  end
end

class OneTimeAppointment < Appointment
  attr_accessor :day, :month, :year
  def initialize(location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min)
    @day = day
    @month = month
    @year = year
  end

  def occurs_on?(day, month, year)
    @day == day && @month == month && @year == year
  end

  def to_s
    "Reunión única en #{@location} sobre #{@purpose} el día #{@day}/#{@month}/#{@year} a las(s) #{@hour}:#{@min}"
  end
end

#Ejemplos del enunciado
puts MonthlyAppointment.new("Nasa", "aliens", 8, 15, 23)
puts DailyAppointment.new("Desafio latam", "Educación", 8, 15)
puts OneTimeAppointment.new("Desafío latam", "Trabajo", 14, 30, 04, 06, 2019)

#Ejemplo occurs_on?
puts MonthlyAppointment.new("Nasa", "aliens", 8, 15, 23).occurs_on?(10) #False
puts DailyAppointment.new("Desafio latam", "Educación", 8, 15).occurs_on?(8, 15) #True
puts OneTimeAppointment.new("Desafío latam", "Trabajo", 14, 30, 04, 06, 2019).occurs_on?(04,05,2019) #False