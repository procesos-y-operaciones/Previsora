class CreateReinsuranceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :reinsurance_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
