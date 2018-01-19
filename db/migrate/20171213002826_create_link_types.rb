class CreateLinkTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :link_types do |t|
      t.string :name
      t.integer :n_type

      t.timestamps
    end
  end
end
