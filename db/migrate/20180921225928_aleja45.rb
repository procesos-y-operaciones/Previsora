class Aleja45 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20335).update(id: 20335,more_protections: '-SOAT')
  end
end
