class CreateBranchCommercials < ActiveRecord::Migration[5.1]
  def change
    create_table :branch_commercials do |t|
      t.string :name

      t.timestamps
    end
  end
end
