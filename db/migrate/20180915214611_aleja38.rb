class Aleja38 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(19724).update(id: 19724,coactive_value_cents: '2939818504',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19473).update(id: 19473,coactive_value_cents: '279191266',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19367).update(id: 19367,coactive_value_cents: '5532317',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18602).update(id: 18602,coactive_value_cents: '3513645',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(14865).update(id: 14865,coactive_value_cents: '2939818504',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13695).update(id: 13695,coactive_value_cents: '59998600',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11418).update(id: 11418,coactive_value_cents: '5659253',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
