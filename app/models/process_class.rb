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
    [ProcessClass.find(27)]
  end

end
