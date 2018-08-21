# == Schema Information
#
# Table name: sinisters
#
#  id                         :integer          not null, primary key
#  number                     :integer          default(0)
#  exercise                   :integer          default(0)
#  branch_policy              :string           default("NO APLICA")
#  branch_commercial          :string           default("NO APLICA")
#  sinister                   :string           default("NO APLICA")
#  reserve_cents              :bigint(8)
#  reserve_cents_modify       :bigint(8)
#  reserve_cents_total        :bigint(8)
#  reserve_cents_date         :date
#  reserved_fees_cents        :bigint(8)
#  reserved_fees_cents_modify :bigint(8)
#  reserved_fees_cents_total  :bigint(8)
#  reserved_fees_cents_date   :date
#  type_process_id            :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  internal_lawyer            :string
#

require 'test_helper'

class SinisterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
