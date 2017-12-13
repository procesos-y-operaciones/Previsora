class CreateBranchPolicies < ActiveRecord::Migration[5.1]
  def change
    create_table :branch_policies do |t|
      t.string :name

      t.timestamps
    end
  end
end
