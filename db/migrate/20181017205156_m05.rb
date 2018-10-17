class M05 < ActiveRecord::Migration[5.1]
  def change
    TypeProcess.find(234)update(attorny: nil)
  end
end
