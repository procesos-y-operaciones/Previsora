class CreateScoreContingencies < ActiveRecord::Migration[5.1]
  def change
    create_table :score_contingencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
