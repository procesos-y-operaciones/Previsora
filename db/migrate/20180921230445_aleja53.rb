class Aleja53 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5486).update(id: 5486,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES')
    puts TypeProcess.find(5587).update(id: 5587,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES')
    puts TypeProcess.find(5546).update(id: 5546,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES')
  end
end
