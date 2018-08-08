# == Schema Information
#
# Table name: city_cases
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  code        :string
#  departament :string
#

class CityCase < ApplicationRecord

  def self.get_all
    CityCase.select(:id, :name, :code).order(name: :asc).where.not(code: "000")
  end

  def self.bog
    CityCase.where(name: "ACANDI")
  end

end
