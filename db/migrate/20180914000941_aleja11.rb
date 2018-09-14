class Aleja11 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(8805).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8738).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9078).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9110).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9348).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6345).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6425).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2670).update(score_contingency: 'PROBABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9576).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9060).update(score_contingency: 'EVENTUAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
