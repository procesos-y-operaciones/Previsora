class Aleja77 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5460).update(id: 5460,failed_notification_date: '2017-06-30',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(5929).update(id: 5929,failed_notification_date: '2017-03-27',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12605).update(id: 12605,failed_notification_date: '2017-09-05',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12595).update(id: 12595,failed_notification_date: '2018-06-05',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(12686).update(id: 12686,failed_notification_date: '2018-08-28',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(8092).update(id: 8092,failed_notification_date: '2018-05-17',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(9357).update(id: 9357,failed_notification_date: '2018-08-30',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(9143).update(id: 9143,failed_notification_date: '2018-03-23',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(82).update(id: 82,failed_notification_date: '2017-11-16',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(13695).update(id: 13695,failed_notification_date: '2018-07-16',state: 'REGISTRO NUEVO ACTUALIZADO')
    puts TypeProcess.find(13695).update(id: 13695,failed_notification_date: '2018-07-05',state: 'REGISTRO NUEVO ACTUALIZADO')
  end
end
