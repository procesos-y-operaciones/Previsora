class Upd07 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(12811).update(office_name: 'TRIBUNAL ADMINISTRATIVO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12745).update(office_name: 'CONTRALORIA DEPARTAMENTAL',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10339).update(office_name: 'CONTRALORIA GENERAL REPUBLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10269).update(office_name: 'CONTRALORIA DEPARTAMENTAL',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1871).update(office_name: 'CONTRALORIA DEPARTAMENTAL',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
