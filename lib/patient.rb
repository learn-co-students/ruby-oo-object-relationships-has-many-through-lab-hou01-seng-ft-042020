class Patient
    attr_reader :patient
    @@all = []

    def initialize(patient)
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointments| appointments.patient == self}
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end
end
