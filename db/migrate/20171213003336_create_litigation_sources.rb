class CreateLitigationSources < ActiveRecord::Migration[5.1]
  def change
    create_table :litigation_sources do |t|
      t.string :name

      t.timestamps
    end
  end
end
