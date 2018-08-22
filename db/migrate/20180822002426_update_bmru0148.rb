class UpdateBmru0148 < ActiveRecord::Migration[5.1]
  def change
TypeProcess.find(16737).update(reserved_fees_cents: 500000,state: 'REGISTRO MIGRADO SOBRESCRITO')

TypeProcess.find(17520).update(reserved_fees_cents: 10000000,state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
