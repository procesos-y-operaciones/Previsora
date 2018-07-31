class CreateSinisters < ActiveRecord::Migration[5.1]
  def change

    remove_column :type_processes, :sinisters
    remove_column :type_processes, :policies

    create_table :sinisters do |t|

      t.integer   :number, default: 0
      t.integer   :exercise, default: 0
      t.string    :branch_policy, default: "NO APLICA"
      t.string    :branch_commercial, default: "NO APLICA"
      t.string    :sinister, default: "NO APLICA"

      t.bigint  :reserve_cents
      t.bigint  :reserve_cents_modify
      t.bigint  :reserve_cents_date
      t.date    :reserve_cents_date

      t.bigint  :reserved_fees_cents
      t.bigint  :reserved_fees_cents_modify
      t.bigint  :reserved_fees_cents_total
      t.date    :reserved_fees_cents_date

      t.belongs_to :type_process, index: true

    end
  end
end
