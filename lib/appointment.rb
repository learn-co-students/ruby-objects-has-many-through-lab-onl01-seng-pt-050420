class Appointment 
  attr_accessor :date, :patient, :doctor
    @@appointment = []
  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient
    @doctor = doctor
    @@appointment << self 
  end
  
  def self.all 
    @@appointment
  end
  
end