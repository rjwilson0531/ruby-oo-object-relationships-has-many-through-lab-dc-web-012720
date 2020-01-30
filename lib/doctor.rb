require "pry"
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
        Appointment.all.select{|ap| ap.doctor == self}
    end
    
    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        self.appointments.map{|ap| ap.patient}
    end
end