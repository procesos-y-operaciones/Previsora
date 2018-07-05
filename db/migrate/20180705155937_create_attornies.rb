class CreateAttornies < ActiveRecord::Migration[5.1]
  def change
    create_table :attornies do |t|
      t.string :name

      t.timestamps
    end
  end
end
