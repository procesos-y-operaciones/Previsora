class AddDocumentToTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :state, :string, default: "REGISTRO NUEVO"
    add_column :type_processes, :document_active_part, :string, default: "NO APLICA"
    add_column :type_processes, :document_passive_part, :string, default: "NO APLICA"
  end
end
