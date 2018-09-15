class Aleja12 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(18780).update(id: 18780,has_coactive_radicate: true,coactive_radicate: 'PAC 018-16',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18368).update(id: 18368,has_coactive_radicate: true,coactive_radicate: '2182-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(17799).update(id: 17799,has_coactive_radicate: true,coactive_radicate: '001 DE 2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19724).update(id: 19724,has_coactive_radicate: true,coactive_radicate: '17-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19473).update(id: 19473,has_coactive_radicate: true,coactive_radicate: '03-2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19367).update(id: 19367,has_coactive_radicate: true,coactive_radicate: '2375-2018',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(18602).update(id: 18602,has_coactive_radicate: true,coactive_radicate: '001-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(15701).update(id: 15701,has_coactive_radicate: true,coactive_radicate: '2123',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(14865).update(id: 14865,has_coactive_radicate: true,coactive_radicate: '17-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(13695).update(id: 13695,has_coactive_radicate: true,coactive_radicate: '02-2017',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11418).update(id: 11418,has_coactive_radicate: true,coactive_radicate: '690',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
