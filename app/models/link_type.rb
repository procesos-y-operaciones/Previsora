# == Schema Information
#
# Table name: link_types
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LinkType < ApplicationRecord

  def self.prejudicial
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [0,7])
  end

  def self.judicial
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [2, 3])
  end

  def self.fiscal
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [8])
  end

  def self.administrative
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [4])
  end

  def self.tutelage
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [0, 6])
  end

end
