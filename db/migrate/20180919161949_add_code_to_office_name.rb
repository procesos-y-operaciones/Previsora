class AddCodeToOfficeName < ActiveRecord::Migration[5.1]
  def change
    add_column :office_names, :code, :string
  end
end
