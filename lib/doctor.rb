require 'pry'
class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def appointments
        Appointment.all.select do |appt|
        
            appt.doctor == self
        end 
    end
    
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def patients
        self.appointments.collect do |appt|
            appt.patient 
            # binding.pry

        end 
    end 
end 
