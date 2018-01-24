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
    LinkType.order(name: :asc).where(n_type: [0, 1, 2, 3, 4, 5])
  end

  def self.judicial
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [2, 3])
  end

  def self.fiscal
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [3])
  end

  def self.administrative
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [4])
  end

  def self.tutelage
    LinkType.order(n_type: :desc, name: :asc).where(n_type: [0, 4])
  end

end
