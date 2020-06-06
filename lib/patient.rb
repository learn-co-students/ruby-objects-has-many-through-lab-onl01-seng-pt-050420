class Patient
attr_accessor :name, :appointments, :doctors
@@all= []
  def initialize(patient)
	@patient = patient
	@@all << self
  end
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  def appointments
    Appointment.all.select{|appointment| appointment.patient == self }
  end
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
  def self.all
    @@all
  end
end