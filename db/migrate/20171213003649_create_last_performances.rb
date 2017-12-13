class CreateLastPerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :last_performances do |t|
      t.string :name

      t.timestamps
    end
  end
end
