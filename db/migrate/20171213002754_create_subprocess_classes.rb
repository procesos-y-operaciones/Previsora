class CreateSubprocessClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :subprocess_classes do |t|
      t.string  :name
      t.integer :n_type

      t.timestamps
    end
  end
end
