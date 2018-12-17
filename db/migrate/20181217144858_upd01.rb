class Upd01 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(22575).update(case_id_sise: '201109000253',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10945).update(case_id_sise: '201109000199',updated_at: '06/12/2018 23:04',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
