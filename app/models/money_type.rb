# == Schema Information
#
# Table name: money_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MoneyType < ApplicationRecord

  def self.cents
    MoneyType.where(name: "PESOS")
  end

end
