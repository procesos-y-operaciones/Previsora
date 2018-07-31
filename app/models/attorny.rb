# == Schema Information
#
# Table name: attornies
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attorny < ApplicationRecord

  def self.get_all
    Attorny.order(:name).where.not(id: 0)
  end

end
