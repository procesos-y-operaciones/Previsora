class Aleja36 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(3453).update(recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4528).update(recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5344).update(recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
