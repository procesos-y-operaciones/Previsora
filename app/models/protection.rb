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
    Protection.find([36])
  end

  def self.ordinarie
    Protection.find([37, 38, 39, 40])
  end

end
