class Aleja05 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(9175).update(case_termination: 'TERMINADO CON PAGO: EN CONTRA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9027).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8268).update(case_termination: 'TERMINADO CON PAGO: EN CONTRA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8267).update(case_termination: 'TERMINADO CON PAGO: EN CONTRA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6984).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6475).update(case_termination: 'TERMINADO CON PAGO: EN CONTRA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1847).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1712).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1694).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1609).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1326).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1312).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1726).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1591).update(case_termination: 'TERMINADO SIN PAGO: A FAVOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
