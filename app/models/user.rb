class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
    #     before_action :authenticate_user!
=======
  #       before_action :authenticate_user!
>>>>>>> 9d424daf62d3d0a846801b85c59bc0687e6a3cc2
end
