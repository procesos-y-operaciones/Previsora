class AddCodesToDepartamentsCities < ActiveRecord::Migration[5.1]

  def change

    add_column :departaments, :code, :string
    add_column :city_cases, :code, :string
    add_column :city_cases, :departament, :string

  end

end
