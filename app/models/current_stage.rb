# == Schema Information
#
# Table name: current_stages
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CurrentStage < ApplicationRecord

  def self.fiscal_ver
    CurrentStage.where(n_type: 1)
  end

  def self.fiscal_ord
    CurrentStage.where(n_type: 2)
  end

end
