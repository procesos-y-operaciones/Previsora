class CreateProcessClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :process_classes do |t|
      t.string  :name
      t.integer :n_type

      t.timestamps
    end
  end
end
