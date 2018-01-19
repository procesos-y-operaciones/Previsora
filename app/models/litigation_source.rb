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
    #LitigationSource.order(name: :asc).where("n_type==0 OR n_type==1 OR n_type==2 OR n_type== 3 OR n_type==4 OR n_type==5")
  end

end
