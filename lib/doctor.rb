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

   def appointments #returns all appointments associated with this Doctor
       Appointment.all.select{|appointment| appointment.doctor == self}
   end 

   def new_appointment(date, patient) #given a date and a patient, creates a new appointment
       Appointment.new(date, patient, self) 
   end 

   def patients # has many patients, through appointments
       appointments.map do |appointment| 
          appointment.patient 
       end 
   end
  
   
end