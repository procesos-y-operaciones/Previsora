# == Schema Information
#
# Table name: office_names
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OfficeName < ApplicationRecord

  def self.fiscal
    OfficeName.where("name like '%AUDITORIA%' OR name like '%CONTRALORIA%'")
  end

  def self.judicial
    OfficeName.where("name like '%JUZGADO%' OR name like '%OTRO%'")
  end

  def self.tutelage
    OfficeName.where("name like '%JUZGADO%' OR name like '%OTRO%'")
  end

  def self.coljuegos
    OfficeName.where("name like '%COLJUEGOS%'")
  end

  def self.ordinare
    OfficeName.where("name like '%MINISTERIO%' OR name like '%ALCALDIA%' OR name like '%REGISTRADURIA%' or name like '%OTRO%'")
  end

end
