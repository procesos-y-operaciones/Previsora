# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default("")
#  encrypted_password     :string           default(""), not null
#  document               :string           default(""), not null
#  name                   :string           default(""), not null
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
    end
  end

  def self.get_lawyers
    User.order(:name).where(role: 1)
  end

end
