# == Schema Information
#
# Table name: case_terminations
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CaseTermination < ApplicationRecord

  def self.tutelage
    CaseTermination.where(n_type: [0,2])
  end

  def self.administrative
    CaseTermination.where(n_type: [0,1,3])
  end

  def self.other
    CaseTermination.where(n_type: [0,1])
  end

end
