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

  def self.prejudicial
    LinkType.order(name: :asc).where("n_type==0 OR n_type==1 OR n_type==2 OR n_type== 3 OR n_type==4 OR n_type==5")
  end

  def self.judicial
    LinkType.order(n_type: :desc, name: :asc).where("n_type==2 OR n_type== 3")
  end

  def self.fiscal
    LinkType.order(n_type: :desc, name: :asc).where("n_type==3")
  end

  def self.administrative
    LinkType.order(n_type: :desc, name: :asc).where("n_type==4")
  end

  def self.tutelage
    LinkType.order(n_type: :desc, name: :asc).where("n_type==0 OR n_type==4")
  end

end
