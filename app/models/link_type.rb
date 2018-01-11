# == Schema Information
#
# Table name: link_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LinkType < ApplicationRecord

  def self.fiscal
    LinkType.order(:name).find([5])
  end

  def self.judicial
    LinkType.order(:name).find([4,5])
  end

  def self.tutelage
    LinkType.order(:name).find([9, 10])
  end

  def self.administrative
    LinkType.order(:name).find([2])
  end

  def self.prejuducial
    LinkType.all.order(:name)
  end

end
