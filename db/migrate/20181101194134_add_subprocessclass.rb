class AddSubprocessclass < ActiveRecord::Migration[5.1]
  def change
    SubprocessClass.create(name: 'COACTIVO', n_type: 4)
  end
end
