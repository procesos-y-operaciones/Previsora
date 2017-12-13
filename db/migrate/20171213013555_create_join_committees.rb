class CreateJoinCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :join_committees do |t|
      t.string :name

      t.timestamps
    end
  end
end
