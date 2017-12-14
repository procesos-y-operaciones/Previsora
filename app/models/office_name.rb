# == Schema Information
#
# Table name: office_names
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OfficeName < ApplicationRecord

  def self.fiscal
    OfficeName.where("name like '%AUDITORIA%' OR name like '%CONTRALORIA%'")
  end


end
