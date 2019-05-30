class Doctor
    @@all = []
    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end.map do |appointment|
            appointment.patient
        end
    end


end
