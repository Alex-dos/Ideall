class User < ApplicationRecord
  has_one :room_user, dependent: :destroy
  has_many :choice_categories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def email_required?
    false
  end

  def email_changed?
    false
  end
  def password_required?
    false
  end

  def password_changed?
    false
  end
end
