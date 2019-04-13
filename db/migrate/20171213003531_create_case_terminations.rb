class CreateCaseTerminations < ActiveRecord::Migration[5.1]
  def change
    create_table :case_terminations do |t|
      t.string :name
      t.integer :n_type

      t.timestamps
    end
  end
end
