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
    SubprocessClass.find([3,4])
  end

  def self.judicial
    SubprocessClass.find([])
  end

  def self.get_name(id)
    SubprocessClass.find(id).name
  end

end
