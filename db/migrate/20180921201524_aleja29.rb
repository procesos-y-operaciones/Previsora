class Aleja29 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(18555).update(id: 18555,fail_value_cents: '12357633',fail_previ_cents: '10200000')
    puts TypeProcess.find(13052).update(id: 13052,fail_value_cents: '6081936',fail_previ_cents: '1231553')
  end
end
