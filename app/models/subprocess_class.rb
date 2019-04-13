# == Schema Information
#
# Table name: subprocess_classes
#
#  id         :integer          not null, primary key
#  name       :string
#  n_type     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SubprocessClass < ApplicationRecord

  def self.penal
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [21])
  end

  def self.admin
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [22])
  end

  def self.civil
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [23])
  end

  def self.arbitral
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [24])
  end

  def self.laboral
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [25])
  end

  def self.fiscal
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [3])
  end

  def self.administrative
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [4])
  end

  def self.tutelage
    SubprocessClass.order(n_type: :desc, name: :asc).where(n_type: [5])
  end

  def self.get_name(id)
    SubprocessClass.find(id).name
  end

end
