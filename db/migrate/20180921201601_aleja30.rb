class Aleja30 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(122).update(id: 122,garnish_value_cents: '240000000')
  end
end
