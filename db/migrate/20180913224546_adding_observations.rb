class AddingObservations < ActiveRecord::Migration[5.1]
  def change

    add_column :type_processes, :observations, :string

  end
end
