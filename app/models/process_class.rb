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
    [ProcessClass.order(:name).find(26)]
  end

  def self.judicial
    ProcessClass.find([1,10,11])
  end

  def self.get_name(id)
    ProcessClass.find(id).name
  end

end
