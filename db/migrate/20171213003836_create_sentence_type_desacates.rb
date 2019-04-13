class CreateSentenceTypeDesacates < ActiveRecord::Migration[5.1]
  def change
    create_table :sentence_type_desacates do |t|
      t.string :name

      t.timestamps
    end
  end
end
