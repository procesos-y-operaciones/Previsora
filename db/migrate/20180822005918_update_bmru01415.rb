class UpdateBmru01415 < ActiveRecord::Migration[5.1]
  def change
TypeProcess.find(10901).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(11133).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(11184).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(11622).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(11743).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12412).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12415).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12792).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12813).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12846).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(12907).update(instance: 'GRADO DE CONSULTA',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
