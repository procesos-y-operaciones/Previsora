class CreateCityCases < ActiveRecord::Migration[5.1]
  def change
    create_table :city_cases do |t|
      t.string :name
      t.string :code
      t.string :departament

      t.timestamps
    end
  end
end
