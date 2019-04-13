# == Schema Information
#
# Table name: score_contingencies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ScoreContingency < ApplicationRecord

  def self.ordered
    ScoreContingency.all.order(:name)
  end

end
