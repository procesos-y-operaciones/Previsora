class Fix06 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(22661).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22659).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22582).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22581).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22541).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22519).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22516).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22512).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22511).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(22510).update(contingency_resume: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
