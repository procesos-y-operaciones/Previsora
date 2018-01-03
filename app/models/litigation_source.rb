# == Schema Information
#
# Table name: litigation_sources
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LitigationSource < ApplicationRecord

  def self.administrative
    LitigationSource.find([2, 5])
  end

end
