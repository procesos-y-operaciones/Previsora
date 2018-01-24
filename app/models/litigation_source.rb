# == Schema Information
#
# Table name: litigation_sources
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LitigationSource < ApplicationRecord

  def self.administrative
    LitigationSource.order(name: :asc).where(n_type: [0, 1])
  end

  def self.ordered
    LitigationSource.order(n_type: :desc, name: :asc).all
  end

end
