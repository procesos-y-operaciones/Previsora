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

  def self.cund
    Departament.where(name: "CUNDINAMARCA")
  end

end
