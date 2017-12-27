# == Schema Information
#
# Table name: process_classes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProcessClass < ApplicationRecord

  def self.fiscal
    [ProcessClass.find(28)]
  end

  def self.judicial
    ProcessClass.find([1,2,11,12,30])
  end

  def self.tutelage
    [ProcessClass.find(29)]
  end

  def self.get_name(id)
    ProcessClass.find(id).name
  end

end
