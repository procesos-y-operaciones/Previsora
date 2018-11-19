class Al28 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(8458).update(id: 8458,fail_value_cents: '15000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9054).update(id: 9054,fail_value_cents: '98000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10414).update(id: 10414,fail_value_cents: '16743387',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11575).update(id: 11575,fail_value_cents: '1891240',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13819).update(id: 13819,fail_value_cents: '99570558',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13990).update(id: 13990,fail_value_cents: '1723982687142',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17288).update(id: 17288,fail_value_cents: '3172000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17556).update(id: 17556,fail_value_cents: '15636456',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17672).update(id: 17672,fail_value_cents: '7580581',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17675).update(id: 17675,fail_value_cents: '128315592',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17750).update(id: 17750,fail_value_cents: '155442469',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18321).update(id: 18321,fail_value_cents: '3220500',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20490).update(id: 20490,fail_value_cents: '40000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21125).update(id: 21125,fail_value_cents: '66496765',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21188).update(id: 21188,fail_value_cents: '348004097',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
