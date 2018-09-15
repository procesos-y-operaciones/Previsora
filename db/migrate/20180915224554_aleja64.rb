class Aleja64 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5265).update(id: 5265,more_protections: '-DANOS MATERIALES COMBINADOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7782).update(id: 7782,more_protections: '-SOAT',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9745).update(id: 9745,more_protections: '-MUERTE O LESION A UNA PERSONA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7601).update(id: 7601,more_protections: '-RC PATRONAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7026).update(id: 7026,more_protections: '-MUERTE O LESION A UNA PERSONA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7838).update(id: 7838,more_protections: '-PREDIOS - LABORES Y OPERACIONES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7693).update(id: 7693,more_protections: '-PREDIOS - LABORES Y OPERACIONES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9048).update(id: 9048,more_protections: '-MUERTE O LESION A UNA PERSONA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8213).update(id: 8213,more_protections: '-ACTOS QUE GENEREN JUICIOS DE RESPONSABILIDAD',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7953).update(id: 7953,more_protections: '-GASTOS SINIESTRO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5262).update(id: 5262,more_protections: '-RESPONSABILIDAD CIVIL SERVIDORES PUBLICOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8927).update(id: 8927,more_protections: '-PREDIOS LABORES Y OPERACIONES ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7975).update(id: 7975,more_protections: '-NO OFRECE AMPARO DE CARA A LOS HECHOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9422).update(id: 9422,more_protections: '-MUERTE O LESION A UNA PERSONA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7973).update(id: 7973,more_protections: '-RC SERVIDORES PUBLICOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
