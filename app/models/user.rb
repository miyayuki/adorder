class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#	validates :name, presence: true, uniqueness: true
#	has_many :orders, foreign_key: 'user_id'
	has_many :cases, foreign_key: 'pic_id'
end
