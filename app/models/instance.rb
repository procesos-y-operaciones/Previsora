# == Schema Information
#
# Table name: instances
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instance < ApplicationRecord

  def self.administrative
    Instance.find([4])
  end

end
