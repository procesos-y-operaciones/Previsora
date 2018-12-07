class Fix32 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20651).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20650).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20649).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20648).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20647).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20646).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20645).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20644).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20635).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20559).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20409).update(case_state: 'NO APLICA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
