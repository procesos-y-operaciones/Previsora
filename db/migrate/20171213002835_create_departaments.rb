class CreateDepartaments < ActiveRecord::Migration[5.1]
  def change
    create_table :departaments do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
