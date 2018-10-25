class M04 < ActiveRecord::Migration[5.1]
  def change
    TypeProcess.find(20386).update(attorny: nil)
    TypeProcess.find(19997).update(attorny: nil)
    TypeProcess.find(19942).update(attorny: nil)
    TypeProcess.find(19888).update(attorny: nil)
    TypeProcess.find(19879).update(attorny: nil)
    TypeProcess.find(19812).update(attorny: nil)
    TypeProcess.find(19790).update(attorny: nil)
  end
end
