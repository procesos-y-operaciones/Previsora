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
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 1])
  end

  def self.fiscal_ord
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 2])
  end

  def self.judicial_admin
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 3])
  end

  def self.judicial_laboral
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 4])
  end

  def self.judicial_penal
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 5])
  end

  def self.judicial_arbitral
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 6])
  end

  def self.judicial_verbal
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 7])
  end

  def self.judicial_verbal_sum
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 8])
  end

  def self.judicial_monitorio
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 9])
  end

  def self.judicial_ejecutivo
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 10])
  end

  def self.judicial_declarativos
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 8, 11])
  end

  def self.judicial_sucesion
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 12])
  end

  def self.judicial_liquidacion
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 13])
  end

  def self.judicial_insolvencia
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 14])
  end

  def self.judicial_voluntaria
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 15])
  end

  def self.judicial_ordinario
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 16])
  end

  def self.judicial_divisorio
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 17])
  end

  def self.administrative
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 18])
  end

  def self.prejudicial
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: 19)
  end

end
