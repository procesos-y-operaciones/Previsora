class AddingStatedb < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :state_db, :string, default: "REGISTRO NUEVO"
  end
end
