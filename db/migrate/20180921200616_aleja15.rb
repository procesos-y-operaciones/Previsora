class Aleja15 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(7058).update(id: 7058,more_protections: '-1-RC PROFESIONALES MEDICOS')
    puts TypeProcess.find(7425).update(id: 7425,more_protections: '-EQUIPO Y MAQUINARIA')
  end
end
