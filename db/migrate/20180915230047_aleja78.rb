class Aleja78 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5460).update(id: 5460,last_performance_date: '2018-06-28',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5929).update(id: 5929,last_performance_date: '2018-03-27',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12605).update(id: 12605,last_performance_date: '2017-09-05',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12595).update(id: 12595,last_performance_date: '2018-06-05',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12686).update(id: 12686,last_performance_date: '2018-08-28',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9357).update(id: 9357,last_performance_date: '2018-08-30',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9143).update(id: 9143,last_performance_date: '2018-03-23',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(82).update(id: 82,last_performance_date: '2017-11-16',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13695).update(id: 13695,last_performance_date: '2018-07-05',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13695).update(id: 13695,last_performance_date: '2018-07-05',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(72).update(id: 72,last_performance_date: '2018-06-21',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
