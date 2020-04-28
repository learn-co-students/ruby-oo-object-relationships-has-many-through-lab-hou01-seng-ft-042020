class Patient

    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doc, date)
        Appointment.new(date, self, doc)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end


    def doctors
        appointments.map {|appointment| appointment.doctor}.uniq
    end
end
