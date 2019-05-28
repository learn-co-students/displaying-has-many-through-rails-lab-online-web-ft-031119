class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def appt_time
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
