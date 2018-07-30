class CreateSinisters < ActiveRecord::Migration[5.1]
  def change
    create_table :sinisters do |t|

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
