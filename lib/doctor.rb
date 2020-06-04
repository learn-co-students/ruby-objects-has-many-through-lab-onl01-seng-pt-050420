class Doctor

@@doctors= []
  attr_accessor :name
  
  def initialize(name)
    @name=name
    @@doctors << self
  end
 
  def self.all 
    @@doctors
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
 
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.map{|apt| apt.patient}
  end
end
  