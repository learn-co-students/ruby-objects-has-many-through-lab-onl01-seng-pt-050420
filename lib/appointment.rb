class Appointment
  @@all = []
  attr_accessor:date_string, :patient, :doctor
  
  def initialize(date_string,patient,doctor)
    @date_string=date_string
    @patient = patient
    @doctor = doctor
    @@all << self
  end
 def self.all
    @@all
  end
  #def patient
  #  self.all.map {|apt| apt.patient}
  #end
end