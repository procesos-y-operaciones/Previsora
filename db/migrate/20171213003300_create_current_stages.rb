class CreateCurrentStages < ActiveRecord::Migration[5.1]
  def change
    create_table :current_stages do |t|
      t.string :name

      t.timestamps
    end
  end
end
