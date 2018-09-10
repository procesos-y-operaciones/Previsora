class Aleja33 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(2335).update(has_costs: true,cost_value_cents: '13778910',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4060).update(has_costs: true,cost_value_cents: '1564484',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4528).update(has_costs: true,cost_value_cents: '2213151',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5331).update(has_costs: true,cost_value_cents: '13853040',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5644).update(has_costs: true,cost_value_cents: '1500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5926).update(has_costs: true,cost_value_cents: '1500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6230).update(has_costs: true,cost_value_cents: '4500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6437).update(has_costs: true,cost_value_cents: '10000000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6478).update(has_costs: true,cost_value_cents: '2535400',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7248).update(has_costs: true,cost_value_cents: '1000000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7674).update(has_costs: true,cost_value_cents: '285000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8601).update(has_costs: true,cost_value_cents: '500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8822).update(has_costs: true,cost_value_cents: '100000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8865).update(has_costs: true,cost_value_cents: '2213151',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9503).update(has_costs: true,cost_value_cents: '500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9590).update(has_costs: true,cost_value_cents: '1566378',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9595).update(has_costs: true,cost_value_cents: '3310726',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9882).update(has_costs: true,cost_value_cents: '700000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10024).update(has_costs: true,cost_value_cents: '3500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
