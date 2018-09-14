class Aleja12 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(6345).update(passive_part: 'HOSPITAL ROSARIO PUMAREJO DE LOPEZ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6425).update(passive_part: 'CLINICA LAURA DANIELA Y OTRO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2670).update(passive_part: 'CLINICA DEL CESAR Y OTRO',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
