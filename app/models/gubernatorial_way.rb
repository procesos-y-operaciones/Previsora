# == Schema Information
#
# Table name: gubernatorial_ways
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GubernatorialWay < ApplicationRecord

  def self.coljuegos
    GubernatorialWay.order(:name).where(n_type: 1)
  end

  def self.ordinarie
    GubernatorialWay.order(:name).where(n_type: 2)
  end

end
