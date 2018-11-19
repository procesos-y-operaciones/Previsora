class Al22 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(8458).update(id: 8458,reconcilie_value_cents: 15000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8594).update(id: 8594,reconcilie_value_cents: 35000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8765).update(id: 8765,reconcilie_value_cents: 1105500,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9054).update(id: 9054,reconcilie_value_cents: 98000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20490).update(id: 20490,reconcilie_value_cents: 40000000,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
