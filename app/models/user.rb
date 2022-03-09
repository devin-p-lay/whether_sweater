class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true

  has_secure_password

  def set_access_token
    self.access_token = generate_token
  end

  private

  def generate_token
    loop do
      token = SecureRandom.hex(10)

      break token unless User.where(access_token: token).exists?
    end
  end
end