class M21 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20615).update(id: 20615,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20614).update(id: 20614,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20609).update(id: 20609,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20596).update(id: 20596,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20593).update(id: 20593,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20579).update(id: 20579,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20578).update(id: 20578,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20577).update(id: 20577,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(20462).update(id: 20462,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(19231).update(id: 19231,process_radicate: 'PENDIENTE')
    puts TypeProcess.find(7710).update(id: 7710,process_radicate: 'PENDIENTE')
  end
end
