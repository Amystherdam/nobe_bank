class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]

  validates_presence_of :national_identifier, :name_client

  has_one :account

  attr_writer :login

  validate :validate_national_identifier

  def login 
    @login || national_identifier || email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(national_identifier) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:national_identifier) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  def validate_national_identifier
    if Client.where(email: national_identifier).exists?
      errors.add(:national_identifier, :invalid)
    end
  end
end
