class Doctor
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end
    def new_appointment(date,patient)
        new_appointment = Appointment.new(date, patient,self)

    end
    def patients
        Appointment.all.collect{|appointment| appointment.patient}
    end
end