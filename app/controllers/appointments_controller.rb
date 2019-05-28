require 'date'
class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    date = DateTime.parse(@appointment.appointment_datetime)
    @formatted_date = date.strftime("%B %d, %Y at %H:%M")
  end
end
