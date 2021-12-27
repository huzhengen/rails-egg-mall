class User < ApplicationRecord
  authenticates_with_sorcery!

  attr_accessor :password, :password_confirmation

  validates_presence_of :email, message: "邮箱不能为空"
  validates_format_of :email, message: "邮箱格式不正确", with: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/, if: proc { |user| !user.email.blank? }
  validates :email, uniqueness: true

  validates_presence_of :password, message: "密码不能为空", if: :need_password_validate
  validates_presence_of :password_confirmation, message: "密码确认不能为空", if: :need_password_validate
  validates_confirmation_of :password, message: "两次密码输入不一致", if: :need_password_validate
  validates_length_of :password, message: "密码长度不能少于6位", minimum: 6, if: :need_password_validate

  def username
    self.email.split('@').first
  end

  private
    def need_password_validate
      self.new_record? || (!self.password.nil? || !self.password_confirmation.nil?)
    end
end
