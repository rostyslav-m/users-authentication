class User < ActiveRecord::Base


  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }


  validates :username, presence: true,

  validates :email, presence: true,
                          length: {:minimum => 5, :maximum => 254},
                          format: { with: /@/,
    message: "is not email format" }

  validates :password, confirmation: true,
                          length: {:minimum => 8}
  validates :password_confirmation, presence: true

end
