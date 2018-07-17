class AddingFiledsCapture < ActiveRecord::Migration[5.1]

  def change

    add_column :type_processes, :reserve_cents_modify, :bigint
    add_column :type_processes, :reserve_cents_total, :bigint
    add_column :type_processes, :reserve_cents_date, :date

    add_column :type_processes, :reserved_fees_cents_modify, :bigint
    add_column :type_processes, :reserved_fees_cents_total, :bigint
    add_column :type_processes, :reserved_fees_cents_date, :date    

  end

end
