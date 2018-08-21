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

  belongs_to :type_process, optional: true

end
