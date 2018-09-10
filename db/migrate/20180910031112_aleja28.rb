class Aleja28 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(11418).update(has_coactive_radicate: true,coactive_radicate: '690',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13695).update(has_coactive_radicate: true,coactive_radicate: '02-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(14865).update(has_coactive_radicate: true,coactive_radicate: '17-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(15701).update(has_coactive_radicate: true,coactive_radicate: '2123',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17799).update(has_coactive_radicate: true,coactive_radicate: '001 DE 2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18780).update(has_coactive_radicate: true,coactive_radicate: 'PAC 018-16',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19367).update(has_coactive_radicate: true,coactive_radicate: '2375-2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19473).update(has_coactive_radicate: true,coactive_radicate: '03-2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19724).update(has_coactive_radicate: true,coactive_radicate: '17-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
