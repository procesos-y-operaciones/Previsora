class Aleja42 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(10024).update(id: 10024,has_costs: false,cost_value_cents: '3500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9882).update(id: 9882,has_costs: false,cost_value_cents: '700000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8601).update(id: 8601,has_costs: false,cost_value_cents: '500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9595).update(id: 9595,has_costs: false,cost_value_cents: '3310726',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9590).update(id: 9590,has_costs: false,cost_value_cents: '1566378',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9503).update(id: 9503,has_costs: true,cost_value_cents: '500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8865).update(id: 8865,has_costs: false,cost_value_cents: '2213151',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8822).update(id: 8822,has_costs: false,cost_value_cents: '100000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7674).update(id: 7674,has_costs: false,cost_value_cents: '285000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7248).update(id: 7248,has_costs: true,cost_value_cents: '1000000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6478).update(id: 6478,has_costs: false,cost_value_cents: '2535400',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6437).update(id: 6437,has_costs: true,cost_value_cents: '10000000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6230).update(id: 6230,has_costs: false,cost_value_cents: '4500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5926).update(id: 5926,has_costs: false,cost_value_cents: '1500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5644).update(id: 5644,has_costs: false,cost_value_cents: '1500000',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5331).update(id: 5331,has_costs: false,cost_value_cents: '13853040',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4528).update(id: 4528,has_costs: false,cost_value_cents: '2213151',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4060).update(id: 4060,has_costs: false,cost_value_cents: '1564484',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2335).update(id: 2335,has_costs: false,cost_value_cents: '13778910',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
