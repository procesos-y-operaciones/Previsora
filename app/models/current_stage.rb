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
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 3, 99])
  end

  def self.judicial_laboral
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 4, 99])
  end

  def self.judicial_penal
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 5, 99])
  end

  def self.judicial_arbitral
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 6, 99])
  end

  def self.judicial_verbal
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 7, 99])
  end

  def self.judicial_verbal_sum
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 8, 99])
  end

  def self.judicial_monitorio
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 9, 99])
  end

  def self.judicial_ejecutivo
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 10, 99])
  end

  def self.judicial_declarativos
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 8, 11, 99])
  end

  def self.judicial_sucesion
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 12, 99])
  end

  def self.judicial_liquidacion
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 13, 99])
  end

  def self.judicial_insolvencia
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 14, 99])
  end

  def self.judicial_voluntaria
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 15, 99])
  end

  def self.judicial_ordinario
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 16, 99])
  end

  def self.judicial_divisorio
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 17, 99])
  end

  def self.administrative
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 18])
  end

  def self.prejudicial
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: 19)
  end

  def self.judicial_verbalcgp
    CurrentStage.order(n_type: :desc, name: :asc).where(n_type: [0, 20, 99])
  end

end


#<CurrentStage id: 63, name: "ADMISION DEMANDA DE CASACION", n_type: 4, created_at: "2018-09-07 20:28:13", updated_at: "2018-09-07 20:28:13">
