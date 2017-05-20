class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize name
    @name = name
    @appointments = []
  end

  def add_appointment appt_obj
    appt_obj.doctor = self
    @appointments << appt_obj
  end

  def patients
    dr_patients = @appointments.map { |appt| appt.patient }
  end
end
