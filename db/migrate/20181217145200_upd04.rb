class Upd04 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(22575).update(passive_part: 'HOSPITAL SAN LORENZO DE SUPIA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20651).update(passive_part: 'MUNICIPIO DE MURINDO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20650).update(passive_part: 'MUNICIPIO DE SOPETRAN',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20647).update(passive_part: 'LEMOS AGUDELO CARLOS ALBERTO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12714).update(passive_part: 'E.S.E. HOSPITAL SAN VICENTE DE PAUL REMEDIOS ANT',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12569).update(passive_part: 'MUNICIPIO DE OLAYA ANTIOQUIA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12496).update(passive_part: 'MUNICIPIO DE ENVIGADO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10993).update(passive_part: 'ARANGO ALVAREZ ANA MARIA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10563).update(passive_part: 'GOBERNACION DE CASANARE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
