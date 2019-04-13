# == Schema Information
#
# Table name: branch_policies
#
#  id         :integer          not null, primary key
#  name       :string
#  num        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BranchPolicy < ApplicationRecord

  def large_name
    "#{num} - #{name}"
  end

end
