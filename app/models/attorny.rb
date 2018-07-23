class Attorny < ApplicationRecord

  def self.get_all
    Attorny.order(:name).where.not(id: 0)
  end

end
