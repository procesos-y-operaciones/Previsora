class Al31 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(10414).update(id: 10414,coactive_value_cents: '8389330',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11575).update(id: 11575,coactive_value_cents: '1891240',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17750).update(id: 17750,coactive_value_cents: '155442469',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21188).update(id: 21188,coactive_value_cents: '123952478',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
