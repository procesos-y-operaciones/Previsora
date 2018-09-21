class Aleja59 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5486).update(id: 5486,failed_notification_date: '2017-05-05')
    puts TypeProcess.find(5587).update(id: 5587,failed_notification_date: '2018-02-08')
    puts TypeProcess.find(5546).update(id: 5546,failed_notification_date: '2017-09-29')
  end
end
