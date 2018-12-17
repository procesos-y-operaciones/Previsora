class Upd10 < ActiveRecord::Migration[5.1]
  def change
    Policy.create(type_process_id: 21825, policy_number: 3000100)
    Policy.create(type_process_id: 15856, policy_number: 1006920)
    Policy.create(type_process_id: 12569, policy_number: 1001186)
    Policy.create(type_process_id: 12496, policy_number: 1001226)
    Policy.create(type_process_id: 12395, policy_number: 1004193)
    Policy.create(type_process_id: 12194, policy_number: 1000050)
    Policy.create(type_process_id: 11908, policy_number: 1001513)
    Policy.create(type_process_id: 10819, policy_number: 1000052)
    Policy.create(type_process_id: 10805, policy_number: 1000101)
    Policy.create(type_process_id: 10563, policy_number: 1002977)
    Policy.create(type_process_id: 10557, policy_number: 1006981)
    Policy.create(type_process_id: 10442, policy_number: 1003152)
    Policy.create(type_process_id: 10273, policy_number: 1004154)
    Policy.create(type_process_id: 10271, policy_number: 1001130)
    Policy.create(type_process_id: 10260, policy_number: 3000060)
    Policy.create(type_process_id: 5118, policy_number: 1001999)
    Policy.create(type_process_id: 4741, policy_number: 1003134)
    Policy.create(type_process_id: 4740, policy_number: 1003134)
    Policy.create(type_process_id: 2986, policy_number: 1008786)
    Policy.create(type_process_id: 2618, policy_number: 1001027)
  end
end
