class CreateCaseTerminations < ActiveRecord::Migration[5.1]
  def change
    create_table :case_terminations do |t|
      t.string :name

      t.timestamps
    end
  end
end
