class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :videos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  validates_uniqueness_of :mobile_number
  validates_presence_of :mobile_number
  validates :password, length: { minimum: 6 }, unless: "password.blank?"
  validates :password, presence: true
  #validates :mobile_number, phone: { possible: false, allow_blank: true, types: [:mobile] }
  validate :password_must_match
  def password_must_match
    errors.add(:password, "doesn't match confirmation") if password != password_confirmation
  end
  def needs_mobile_number_verifying?
    if is_verified
      return false
    end
    if mobile_number.present?
      return false
    end
    return true
  end

end
