class Fix09 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(22879).update(document_active_part: 'PENDIENTE',document_passive_part: 'PENDIENTE',reinsurance_type: 'PENDIENTE',last_performance: 'PENDIENTE',reserved_released: 'PENDIENTE',money_type: 'PENDIENTE',coensurance_type: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
