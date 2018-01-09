# == Schema Information
#
# Table name: protections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Protection < ApplicationRecord

  def self.coljuegos
    Protection.order(:name).find([36])
  end

  def self.ordinarie
    Protection.order(:name).find([37, 38, 39, 40])
  end

  def self.ordered
    Protection.oder(:name)
  end

end
