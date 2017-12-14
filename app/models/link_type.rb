# == Schema Information
#
# Table name: link_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LinkType < ApplicationRecord

  def self.fiscal
    [LinkType.find(4)]
  end

end
