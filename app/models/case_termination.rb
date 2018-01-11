# == Schema Information
#
# Table name: case_terminations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CaseTermination < ApplicationRecord

  def self.tutelage
    CaseTermination.find([1, 4, 5])
  end

  def self.other
    CaseTermination.find([1, 2, 3])
  end

end
