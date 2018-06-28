class AddBooleansToTypeprocess < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :has_correspondency_radicate, :boolean, default: false
    add_column :type_processes, :has_more_polcies, :boolean, default: false
    add_column :type_processes, :has_costs, :boolean, default: false
    add_column :type_processes, :has_coactive_radicate, :boolean, default: false
    add_column :type_processes, :has_impug, :boolean, default: false
    add_column :type_processes, :has_desacate, :boolean, default: false
    add_column :type_processes, :state, :string, default: "REGISTRO NUEVO"
    add_column :type_processes, :document_active_part, :string, default: "NO APLICA"
    add_column :type_processes, :document_passive_part, :string, default: "NO APLICA"
  end
end
