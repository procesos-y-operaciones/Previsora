class Aleja50 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(5265).update(id: 5265,case_id_sise: '201010004550',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5639).update(id: 5639,case_id_sise: '200710001731',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5460).update(id: 5460,case_id_sise: '201110003039',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5929).update(id: 5929,case_id_sise: '201110002729',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5576).update(id: 5576,case_id_sise: '201410004225',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5682).update(id: 5682,case_id_sise: '201310004138',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5262).update(id: 5262,case_id_sise: '201410004344',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4704).update(id: 4704,case_id_sise: '201403000684',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
