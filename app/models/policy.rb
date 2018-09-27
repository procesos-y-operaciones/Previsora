# == Schema Information
#
# Table name: policies
#
#  id              :integer          not null, primary key
#  policy_number   :string
#  policy_taker    :string
#  type_process_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ensurance_value :bigint(8)
#

class Policy < ApplicationRecord

  after_commit :store_values

  belongs_to :type_process, optional: true

  private

    def store_values
      t_process = TypeProcess.find(self.type_process_id)
      if t_process.p_type != 5
        t_process.ensurance_value_cents = t_process.sinisters.pluck(:ensurance_value_cents).sum
        t_process.save
      end
    end

end
