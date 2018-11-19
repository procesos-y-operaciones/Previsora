class Al29 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(4959).update(id: 4959,fail_previ_cents: '61000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8458).update(id: 8458,fail_previ_cents: '15000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9054).update(id: 9054,fail_previ_cents: '98000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10414).update(id: 10414,fail_previ_cents: '8389330',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11575).update(id: 11575,fail_previ_cents: '1387205',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11750).update(id: 11750,fail_previ_cents: '10000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13819).update(id: 13819,fail_previ_cents: '99570558',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13990).update(id: 13990,fail_previ_cents: '380000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17288).update(id: 17288,fail_previ_cents: '5000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17556).update(id: 17556,fail_previ_cents: '20000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17750).update(id: 17750,fail_previ_cents: '155442469',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18518).update(id: 18518,fail_previ_cents: '11443581',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20490).update(id: 20490,fail_previ_cents: '40000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21125).update(id: 21125,fail_previ_cents: '66496765',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21188).update(id: 21188,fail_previ_cents: '200000000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
