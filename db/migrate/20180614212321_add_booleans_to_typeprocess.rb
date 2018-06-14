class AddBooleansToTypeprocess < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :has_correspondency_radicate, :boolean, default: false
    add_column :type_processes, :has_more_polcies, :boolean, default: false
    add_column :type_processes, :has_costs, :boolean, default: false
    add_column :type_processes, :has_coactive_radicate, :boolean, default: false
    add_column :type_processes, :has_impug, :boolean, default: false
    add_column :type_processes, :has_desacate, :boolean, default: false
  end
end
