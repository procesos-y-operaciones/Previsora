class CreateReservedReleaseds < ActiveRecord::Migration[5.1]
  def change
    create_table :reserved_releaseds do |t|
      
      t.string :name

      t.timestamps
    end
  end
end
