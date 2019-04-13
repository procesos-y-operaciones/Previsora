# == Schema Information
#
# Table name: reinsurance_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ReinsuranceType < ApplicationRecord

  def self.separateFree
    ReinsuranceType.find([1])
  end

  def self.separate
    ReinsuranceType.find([2, 3])
  end

end
