class AddFiedsToDepartamentesCities < ActiveRecord::Migration[5.1]

  def change

    add_column :departaments, :code, :string
    add_column :city_cases, :code, :string
    add_column :city_cases, :departament, :string

    change_column_default(:type_processes, :departament, "00")
    change_column_default(:type_processes, :city_case, "00")

  end

end
