class Patient < ActiveRecord::Base
  def Patient.showAppointments(patient_id)
    cita = Appointment.where(:patient_id => patient_id).first
    puts "#{cita.begin_time}"
  end
end
