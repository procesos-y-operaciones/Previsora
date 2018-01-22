# == Schema Information
#
# Table name: protections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Protection < ApplicationRecord

  def self.coljuegos
    Protection.order(n_type: :desc, name: :asc).where(n_type: [41])
  end

  def self.ordinarie
    Protection.order(n_type: :desc, name: :asc).where(n_type: [0, 42])
  end

  def self.ordered
    Protection.order(n_type: :desc, name: :asc).all
  end

end
