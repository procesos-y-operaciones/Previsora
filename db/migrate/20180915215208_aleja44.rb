class Aleja44 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5344).update(id: 5344,recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4528).update(id: 4528,recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3453).update(id: 3453,recovery: true,state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
