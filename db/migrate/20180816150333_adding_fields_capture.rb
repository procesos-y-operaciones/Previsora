class AddingFieldsCapture < ActiveRecord::Migration[5.1]
  def change

    add_column :policies, :ensurance_value, :bigint

    add_column :sinisters, :internal_lawyer, :string

    add_column :type_processes, :internal_created, :string
    add_column :type_processes, :internal_updated, :string
    add_column :type_processes, :observations, :string

  end
end
