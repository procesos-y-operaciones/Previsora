class AddCaptureState < ActiveRecord::Migration[5.1]
  def change
    add_column :type_processes, :state_capture, :string, default: "NO MODIFICADO"
  end
end
