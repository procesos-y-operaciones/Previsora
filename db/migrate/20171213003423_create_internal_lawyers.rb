class CreateInternalLawyers < ActiveRecord::Migration[5.1]
  def change
    create_table :internal_lawyers do |t|
      t.string :name

      t.timestamps
    end
  end
end
