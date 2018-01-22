# == Schema Information
#
# Table name: process_classes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProcessClass < ApplicationRecord

  def self.prejudicial
    ProcessClass.order(n_type: :desc, name: :asc).where(n_type: [1])
  end

  def self.judicial
    ProcessClass.order(n_type: :desc, name: :asc).where(n_type: [2])
  end

  def self.fiscal
    ProcessClass.order(n_type: :desc, name: :asc).where(n_type: [3])
  end

  def self.administrative
    ProcessClass.order(n_type: :desc, name: :asc).where(n_type: [4])
  end

  def self.tutelage
    ProcessClass.order(n_type: :desc, name: :asc).where(n_type: [5])
  end


end
