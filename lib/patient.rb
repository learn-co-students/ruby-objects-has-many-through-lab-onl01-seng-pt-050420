class Patient 
  attr_accessor :name 
  @@patients = []
  def initialize(name)
    @name = name 
    @@patients << self
  end
  
  def self.all 
    @@patients 
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointment.all.collect do |appointment| appointment.doctor
    end
  end
end