class Aleja33 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(20484).update(id: 20484,case_id_bap: 'GPJ-18496-2018')
    puts TypeProcess.find(20485).update(id: 20485,case_id_bap: 'GPJ-18494-2018')
    puts TypeProcess.find(20063).update(id: 20063,case_id_bap: 'GPJ-18050-2018')
    puts TypeProcess.find(20740).update(id: 20740,case_id_bap: 'GPJ-18566-2018')
    puts TypeProcess.find(20127).update(id: 20127,case_id_bap: 'GPJ-18131-2018')
    puts TypeProcess.find(20068).update(id: 20068,case_id_bap: 'GPJ-18090-2018')
    puts TypeProcess.find(21020).update(id: 21020,case_id_bap: 'GPJ-18149-2018')
    puts TypeProcess.find(20193).update(id: 20193,case_id_bap: 'GPJ-18239-2018')
    puts TypeProcess.find(20194).update(id: 20194,case_id_bap: 'GPJ-18240-2018')
    puts TypeProcess.find(20335).update(id: 20335,case_id_bap: 'GPJ-18196-2018')
    puts TypeProcess.find(20339).update(id: 20339,case_id_bap: 'GPJ-18352-2018')
    puts TypeProcess.find(21142).update(id: 21142,case_id_bap: 'GPJ-17672-2018')
    puts TypeProcess.find(11339).update(id: 11339,case_id_bap: 'GPJ-5370-2016')
    puts TypeProcess.find(3475).update(id: 3475,case_id_bap: 'GPJ-10914-2016')
    puts TypeProcess.find(2976).update(id: 2976,case_id_bap: 'GPJ-12963-2017')
    puts TypeProcess.find(3489).update(id: 3489,case_id_bap: 'GPJ-8858-2016')
    puts TypeProcess.find(20846).update(id: 20846,case_id_bap: 'GPJ-3544-2016')
  end
end
