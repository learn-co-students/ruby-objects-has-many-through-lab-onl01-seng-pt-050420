class Appointment
    @@all = []
    attr_accessor :appointment, :date, :patient, :doctor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end
    def self.all
        @@all
    end
    # def patient
    #     Patient.all.select{|patient| patient.appointment == self}
    # end
end