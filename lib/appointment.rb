class Appointment
    attr_reader :doctor, :patient
    @@all = []
    def initialize(doctor, patient)
        @doctor = doctor
        @patient = patient
        @@all << self

    end


    def initialize()
    end
end