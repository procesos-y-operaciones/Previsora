# == Schema Information
#
# Table name: departaments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  code       :string
#

class Departament < ApplicationRecord

  def self.get_all
    Departament.select(:code, :name).order(name: :asc).where.not(code: "00")
  end

  def self.get_bog
    Departament.select(:code, :name).order(name: :asc).where(code: "11")
  end

  def self.cund
    Departament.where(name: "CUNDINAMARCA")
  end

  def get_zone
    if self
  end

end
