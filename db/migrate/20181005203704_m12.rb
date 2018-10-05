class M12 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20615).update(id: 20615,office_name: 'PENDIENTE')
    puts TypeProcess.find(20614).update(id: 20614,office_name: 'PENDIENTE')
    puts TypeProcess.find(20609).update(id: 20609,office_name: 'PENDIENTE')
    puts TypeProcess.find(20596).update(id: 20596,office_name: 'PENDIENTE')
    puts TypeProcess.find(20593).update(id: 20593,office_name: 'PENDIENTE')
    puts TypeProcess.find(20579).update(id: 20579,office_name: 'PENDIENTE')
    puts TypeProcess.find(20578).update(id: 20578,office_name: 'PENDIENTE')
    puts TypeProcess.find(20577).update(id: 20577,office_name: 'PENDIENTE')
    puts TypeProcess.find(20462).update(id: 20462,office_name: 'PENDIENTE')
  end
end
