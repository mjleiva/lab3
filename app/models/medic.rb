class Medic < ActiveRecord::Base

  def Medic.showAppointments(medic_id)
    cita = Appointment.where(:medic_id => medic_id).first
    puts "#{cita.begin_time}"
  end

end
