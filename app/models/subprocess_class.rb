# == Schema Information
#
# Table name: subprocess_classes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SubprocessClass < ApplicationRecord

  def self.fiscal
    SubprocessClass.find([1,3,4])
  end

end
