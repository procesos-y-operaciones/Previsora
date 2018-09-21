class Aleja43 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5652).update(id: 5652,ensurance_value_cents: 1200000000)
    puts TypeProcess.find(20740).update(id: 20740,ensurance_value_cents: 340000000)
    puts TypeProcess.find(5486).update(id: 5486,ensurance_value_cents: 50000000)
    puts TypeProcess.find(5587).update(id: 5587,ensurance_value_cents: 1600000000)
    puts TypeProcess.find(5546).update(id: 5546,ensurance_value_cents: 400000000)
    puts TypeProcess.find(5903).update(id: 5903,ensurance_value_cents: 300000000)
    puts TypeProcess.find(5780).update(id: 5780,ensurance_value_cents: 300000000)
    puts TypeProcess.find(20339).update(id: 20339,ensurance_value_cents: 64435000)
    puts TypeProcess.find(5862).update(id: 5862,ensurance_value_cents: 1600000000)
    puts TypeProcess.find(5533).update(id: 5533,ensurance_value_cents: 500000000)
    puts TypeProcess.find(18023).update(id: 18023,ensurance_value_cents: 200000000)
    puts TypeProcess.find(5932).update(id: 5932,ensurance_value_cents: 400000000)
    puts TypeProcess.find(5329).update(id: 5329,ensurance_value_cents: 2000000000)
    puts TypeProcess.find(18404).update(id: 18404,ensurance_value_cents: 30000000)
    puts TypeProcess.find(5445).update(id: 5445,ensurance_value_cents: 1000000000)
    puts TypeProcess.find(11339).update(id: 11339,ensurance_value_cents: 600000000)
  end
end
