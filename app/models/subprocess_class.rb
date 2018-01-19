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

  def self.administrative
    SubprocessClass.order(:name).find([71, 72])
  end

  def self.admin
    SubprocessClass.find((42..54).step(1).to_a)
  end

  def self.tutelage
    SubprocessClass.find((28..41).step(1).to_a)
  end

  def self.civil
    SubprocessClass.find((55..65).step(1).to_a)
  end

  def self.arbitral
    SubprocessClass.find([66])
  end

  def self.laboral
    SubprocessClass.find([67, 68])
  end

  def self.get_name(id)
    SubprocessClass.find(id).name
  end

end
