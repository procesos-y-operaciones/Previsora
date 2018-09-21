class Aleja60 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5486).update(id: 5486,last_performance_date: '2017-05-05')
    puts TypeProcess.find(5587).update(id: 5587,last_performance_date: '2018-03-07') 
  end
end
