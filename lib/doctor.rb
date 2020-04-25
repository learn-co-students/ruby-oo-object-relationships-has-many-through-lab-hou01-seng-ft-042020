class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointments|appointments.doctor == self}
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end


end
