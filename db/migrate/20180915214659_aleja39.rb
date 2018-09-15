class Aleja39 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(3947).update(id: 3947,garnish_value_cents: '175000000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9590).update(id: 9590,garnish_value_cents: '1566378',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
