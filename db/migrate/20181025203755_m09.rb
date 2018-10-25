class M09 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20386).update(id: 20386,subprocess_class: 'PENDIENTE')
  end
end
