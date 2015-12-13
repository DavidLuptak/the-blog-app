# User
class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :posts, dependent: :destroy

  has_attached_file :avatar,
                    styles: { medium: '300x300>', thumb: '50x50>' },
                    default_url: '/images/default.png'
  validates_attachment_content_type :avatar, content_type: %r{\Aimage\/.*\Z}
end
