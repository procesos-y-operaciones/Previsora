class Update04 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20864).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21166).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21181).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21255).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21276).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21377).update(case_state: 'Duplicado',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
