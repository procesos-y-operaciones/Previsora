# == Schema Information
#
# Table name: committees
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Committee < ApplicationRecord
end
