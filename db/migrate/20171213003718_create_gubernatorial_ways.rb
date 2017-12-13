class CreateGubernatorialWays < ActiveRecord::Migration[5.1]
  def change
    create_table :gubernatorial_ways do |t|
      t.string :name

      t.timestamps
    end
  end
end
