class VerifyToken < ApplicationRecord

  validates_presence_of :token
  validates_presence_of :cellphone

  scope :avaliable, -> { where('expired_at > :time', time: Time.now) }

end
