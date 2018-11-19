class Al10 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(6049).update(id: 6049,reserve_cents: 15000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21122).update(id: 21122,reserve_cents: 20000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
