class Appointment < ActiveRecord::Base
  
  def Appointment.assignAppointment(medic_id, patient_id, begin_time, end_time)
    crear = Appointment.new :medic_id => medic_id, :patient_id =>patient_id, :begin_time => begin_time, :end_time => end_time
    if crear.save
      puts "true"
    else
      puts "false"
    end
  end

  def Appointment.modifyAppointment(appointment_id, medic_id, begin_time, end_time)
    if Appointment.update(appointment_id, { :medic_id => medic_id, :begin_time => begin_time, :end_time => end_time})
      puts "true"
    else
      puts "false"
    end
  end

  def Appointment.deletAppointment(appointment_id)
    borrar = Appointment.find(appointment_id)
    if borrarCita.destroy
      puts "true"
    else
      puts "false"
    end  
  end
  
  validates_uniqueness_of :patient_id, :begin_time, :end_time
  validates_uniqueness_of :medic_id, :begin_time, :end_time

  
end
