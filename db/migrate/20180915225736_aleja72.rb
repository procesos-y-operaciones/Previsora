class Aleja72 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5460).update(id: 5460,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(5929).update(id: 5929,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12605).update(id: 12605,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'OTRO',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12595).update(id: 12595,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'RECURSO DE APELACION',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12686).update(id: 12686,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'GRADO DE CONSULTA',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(8092).update(id: 8092,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'OTRO',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(9357).update(id: 9357,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(9143).update(id: 9143,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'SENTENCIA Y AUTOS GENERALES',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(82).update(id: 82,case_termination: 'TERMINADO SIN PAGO: A FAVOR',last_performance: 'OTRO',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(13695).update(id: 13695,case_termination: 'TERMINADO CON PAGO: EN CONTRA',last_performance: 'AUTO QUE TERMINA PROCESO POR TRANSACCION',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(13695).update(id: 13695,case_termination: 'TERMINADO CON PAGO: EN CONTRA',last_performance: 'AUTO QUE TERMINA PROCESO POR TRANSACCION',state: 'REGISTRO NUEVO ACTUALIZADO')
  end
end
