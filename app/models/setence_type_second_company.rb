# == Schema Information
#
# Table name: setence_type_second_companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SetenceTypeSecondCompany < ApplicationRecord

  def self.get_name(id)
    SetenceTypeSecondCompany.find(id).name
  end

end
