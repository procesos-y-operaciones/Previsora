class Al21 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(8458).update(id: 8458,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8594).update(id: 8594,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8765).update(id: 8765,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9054).update(id: 9054,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20242).update(id: 20242,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20490).update(id: 20490,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20912).update(id: 20912,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21001).update(id: 21001,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21316).update(id: 21316,state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
