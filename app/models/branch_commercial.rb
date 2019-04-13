# == Schema Information
#
# Table name: branch_commercials
#
#  id         :integer          not null, primary key
#  name       :string
#  num        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BranchCommercial < ApplicationRecord

  def large_name
    "#{num} - #{name}"
  end

  def self.get_name(id)
    id
  end

end
