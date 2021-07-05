class Doctor
attr_accessor :name, :patient

@@all = []

def initialize(name)
@name = name
@@all << self
end


def name
    @name
end
    
    def self.all
        @@all
    end


    def appointments
        Appointment.all.select{|x| x.doctor}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.collect{|x| x.patient}
    end

end