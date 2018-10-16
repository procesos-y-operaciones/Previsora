class M03 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(765).update(id: 765,case_termination: 'PENDIENTE')
    puts TypeProcess.find(761).update(id: 761,case_termination: 'PENDIENTE')
    puts TypeProcess.find(739).update(id: 739,case_termination: 'PENDIENTE')
    puts TypeProcess.find(680).update(id: 680,case_termination: 'PENDIENTE')
    puts TypeProcess.find(671).update(id: 671,case_termination: 'PENDIENTE')
    puts TypeProcess.find(637).update(id: 637,case_termination: 'PENDIENTE')
    puts TypeProcess.find(629).update(id: 629,case_termination: 'PENDIENTE')
    puts TypeProcess.find(607).update(id: 607,case_termination: 'PENDIENTE')
  end
end
