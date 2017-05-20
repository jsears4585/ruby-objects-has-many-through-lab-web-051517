class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize name
    @name = name
    @appointments = []
  end

  def add_appointment appt_obj
    appt_obj.patient = self
    @appointments << appt_obj
  end

  def doctors
    patient_doctors = @appointments.map { |appt| appt.doctor }
  end
end
