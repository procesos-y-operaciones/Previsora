class Upd05 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(10945).update(case_state: 'EN CURSO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4029).update(case_state: 'TERMINADO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
