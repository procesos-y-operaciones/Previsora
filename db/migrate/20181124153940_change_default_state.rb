class ChangeDefaultState < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:type_processes, :state, "REGISTRO NUEVO MIGRACION LITISOFT")
  end
end
