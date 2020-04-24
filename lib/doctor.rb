

class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    #    binding.pry
    end

    def new_appointment(patient, date)
        # binding.pry
        Appointment.new(date, patient, self)
    end

    def patients
        test2= appointments.map {|appointment| appointment.patient}.uniq
        # binding.pry
    end
end
