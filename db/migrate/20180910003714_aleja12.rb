class Aleja12 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(16737).update(reserved_fees_cents: 500000,state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17520).update(reserved_fees_cents: 10000000,state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
