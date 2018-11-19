class Al30 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(10414).update(id: 10414,coactive_radicate: 'PJC-001-2017',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11575).update(id: 11575,coactive_radicate: 'PJC 700-2017',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(15025).update(id: 15025,coactive_radicate: '2171-2017',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17750).update(id: 17750,coactive_radicate: '1104',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(21188).update(id: 21188,coactive_radicate: '2271',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
