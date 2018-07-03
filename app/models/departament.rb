# == Schema Information
#
# Table name: departaments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Departament < ApplicationRecord

  def self.get_all
    Departament.select(:code, :name).order(name: :asc)
  end

  def self.get_bog
    Departament.select(:code, :name).order(name: :asc).where(code: "11")
  end

  def self.cund
    Departament.where(name: "CUNDINAMARCA")
  end

end
