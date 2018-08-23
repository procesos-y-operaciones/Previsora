# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default("")
#  encrypted_password     :string           default(""), not null
#  document               :string           default(""), not null
#  name                   :string           default(""), not null
#  charge                 :string           default(""), not null
#  role                   :integer          default(0), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
  :rememberable, :trackable, :validatable, :authentication_keys => [:document]

  has_many :type_processes, dependent: :destroy

  validates :document, uniqueness: true
  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/)
      errors.add :password, "debe incluir al menos una letra en minúscula, una en mayúscula y un número"
    end
  end

  def email_required?
    false
  end

  def get_role_name
    case role
    when 1
      "ABOGADO INTERNO"
    when 2
      "COORDINADOR OPERATIVO"
    when 3
      "COORDINADOR LEGAL"
    when 4
      "ADMINSITRADOR"
    else
      "DESCONOCIDO"
    end
  end

  def get_processes
   self.type_processes.order('created_at DESC')
  end

  def self.get_sorted
    User.order(:name)
  end

  def self.get_lawyers
    User.order(:name).where(role: 1)
  end

  def self.get_user_header
    [
      "ID", "DOCUMENTO", "NOMBRE USUARIO", "ULTIMO INICIO SESION", "NUMERO DE SESIONES", "JUDICIALES", "FISCALES", "ADMINISTRATIVOS"
    ]
  end

  def get_last_sign_in_at
    if self.last_sign_in_at == nil
      "NUNCA"
    else
      (self.last_sign_in_at - 5.hour).strftime("%d/%m/%Y %H:%M")
    end
  end

  def get_judicial
    self.type_processes.where(p_type: 2).count
  end

  def get_fiscal
    self.type_processes.where(p_type: 3).count
  end

  def get_administrative
    self.type_processes.where(p_type: 4).count
  end

  def get_user_content
    [
      self.id, self.document, self.name, self.get_last_sign_in_at, self.sign_in_count, self.get_judicial, self.get_fiscal, self.get_administrative
    ]
  end

end
