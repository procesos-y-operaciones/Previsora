class Upd09 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(12811).update(departament: '05',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10269).update(departament: '25',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1871).update(departament: '73',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
