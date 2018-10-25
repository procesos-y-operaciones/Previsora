class M15 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(19976).update(id: 19976,case_state: 'PENDIENTE')
    puts TypeProcess.find(19970).update(id: 19970,case_state: 'PENDIENTE')
    puts TypeProcess.find(19964).update(id: 19964,case_state: 'PENDIENTE')
    puts TypeProcess.find(19960).update(id: 19960,case_state: 'PENDIENTE')
    puts TypeProcess.find(19951).update(id: 19951,case_state: 'PENDIENTE')
    puts TypeProcess.find(19948).update(id: 19948,case_state: 'PENDIENTE')
    puts TypeProcess.find(19905).update(id: 19905,case_state: 'PENDIENTE')
    puts TypeProcess.find(19898).update(id: 19898,case_state: 'PENDIENTE')
    puts TypeProcess.find(19895).update(id: 19895,case_state: 'PENDIENTE')
    puts TypeProcess.find(19855).update(id: 19855,case_state: 'PENDIENTE')
    puts TypeProcess.find(19836).update(id: 19836,case_state: 'PENDIENTE')
    puts TypeProcess.find(19829).update(id: 19829,case_state: 'PENDIENTE')
    puts TypeProcess.find(19826).update(id: 19826,case_state: 'PENDIENTE')
    puts TypeProcess.find(19816).update(id: 19816,case_state: 'PENDIENTE')
    puts TypeProcess.find(19810).update(id: 19810,case_state: 'PENDIENTE')
    puts TypeProcess.find(19801).update(id: 19801,case_state: 'PENDIENTE')
    puts TypeProcess.find(19098).update(id: 19098,case_state: 'PENDIENTE')
    puts TypeProcess.find(315).update(id: 315,case_state: 'PENDIENTE')
  end
end
