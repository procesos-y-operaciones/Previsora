class ChangeTypeProcessesAttorny < ActiveRecord::Migration[5.1]
  def change
    change_column :type_processes, :attorny, :integer
  end
end
