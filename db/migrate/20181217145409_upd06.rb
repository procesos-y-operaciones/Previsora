class Upd06 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(21825).update(correspondency_radicate: 'DFR-007-2016',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(15856).update(correspondency_radicate: '004-2011',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12637).update(correspondency_radicate: '023-2013',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12472).update(correspondency_radicate: '455-2011',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12194).update(correspondency_radicate: '1038',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11689).update(correspondency_radicate: '057-2012',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10442).update(correspondency_radicate: '0002-2015',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10273).update(correspondency_radicate: '327',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10260).update(correspondency_radicate: 'DFR-046-2016',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4965).update(correspondency_radicate: '18001333170320120000500',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1895).update(correspondency_radicate: '17001230000020050290900',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1872).update(correspondency_radicate: '17001333375620150001200',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1871).update(correspondency_radicate: '112-1615-2012',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
