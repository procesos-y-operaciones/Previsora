class Aleja74 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(9981).update(id: 9981,reason_inv: 'PENDIENTE EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9423).update(id: 9423,reason_inv: 'NO SE ACREDITO DE FORMA PROBATORIA O CIENTIFICA QUE EXISTIO MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
