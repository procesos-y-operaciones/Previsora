class Al27 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(6437).update(id: 6437, cost_value_cents: 10000000, state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
