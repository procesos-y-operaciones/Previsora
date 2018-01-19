# == Schema Information
#
# Table name: gubernatorial_ways
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GubernatorialWay < ApplicationRecord

  def self.coljuegos
    GubernatorialWay.order(n_type: :desc, name: :asc).where("n_type==0 OR n_type==1")
  end

  def self.ordinarie
    GubernatorialWay.order(n_type: :desc, name: :desc).where("n_type==2")
  end

end
