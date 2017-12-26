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

  def self.penal
    SubprocessClass.find([11])
  end

  def self.admin
    SubprocessClass.find([1])
  end

  def self.tutelage
    SubprocessClass.find([28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39])
  end
  
  def self.get_name(id)
    SubprocessClass.find(id).name
  end

end
