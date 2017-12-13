class CreateSubprocessClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :subprocess_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
