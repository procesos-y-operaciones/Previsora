class CreateProtections < ActiveRecord::Migration[5.1]
  def change
    create_table :protections do |t|
      t.string :name
      t.string :n_type

      t.timestamps
    end
  end
end
