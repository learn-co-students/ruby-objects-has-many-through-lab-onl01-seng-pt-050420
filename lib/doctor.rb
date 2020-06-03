class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|a| a.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments = Appointment.all.select {|s| s.doctor == self}
        patients = []
        appointments.each do |appointment|
            patients << appointment.patient
        end
        patients

    end

    def self.all
        @@all
    end


end