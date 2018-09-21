class Aleja58 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5932).update(id: 5932,auth_value_cents: '250000000')
  end
end
