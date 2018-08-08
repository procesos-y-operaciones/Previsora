class ChangeTypeProcessesAttorny < ActiveRecord::Migration[5.1]
  def change

    remove_column :type_processes, :attorny
    
    add_column :type_processes, :attorny, :integer

    #change_column :type_processes, :attorny, :integer
  end
end
