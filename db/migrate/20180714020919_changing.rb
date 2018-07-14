class Changing < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:type_processes, :city_case, "000")
  end
end
