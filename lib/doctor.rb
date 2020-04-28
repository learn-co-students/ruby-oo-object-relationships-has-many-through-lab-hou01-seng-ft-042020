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

    def new_appointment(p,d)
        Appointment.new(d,p,self)
    end

    def appointments
        Appointment.all.select { |app| app.doctor == self }
    end

    def patients
        appointments.map {|app| app.patient}.uniq
    end

end