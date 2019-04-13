class CreateOfficeNames < ActiveRecord::Migration[5.1]
  def change
    create_table :office_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
