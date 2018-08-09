class AddEmail < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :email, :string
  end
end
