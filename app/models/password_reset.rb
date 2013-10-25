class PasswordReset < ActiveRecord::Base
  belongs_to :customer

  before_validation :generate_token

  def generate_token
  	self.token ||= SecureRandom.hex(16)
  end

  validates_presence_of :customer_id, :token

end