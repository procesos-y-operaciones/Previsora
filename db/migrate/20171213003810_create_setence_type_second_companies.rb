class CreateSetenceTypeSecondCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :setence_type_second_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
