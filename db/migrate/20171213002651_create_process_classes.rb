class CreateProcessClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :process_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
