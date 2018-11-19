class Al04 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(9054).update(id: 9054,process_radicate: '12345678901234567890123',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20462).update(id: 20462,process_radicate: '05001333301120140094000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20577).update(id: 20577,process_radicate: '27001333300320150008000',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20578).update(id: 20578,process_radicate: '27001333300120130023500',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20579).update(id: 20579,process_radicate: '27001312100120160005500',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20593).update(id: 20593,process_radicate: '27001310300120090040800',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20596).update(id: 20596,process_radicate: '27001400300120170056900',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20817).update(id: 20817,process_radicate: '081-2013',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20827).update(id: 20827,process_radicate: '500-25-02-017-2015',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1).update(id: 1,process_radicate: 'PENDIENTE',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
