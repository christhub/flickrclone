class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pictures
  has_many :posts
  has_many :tags
  belongs_to :roles

  validates_presence_of :name

  has_attached_file :avatar, :styles => { :large => "800x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  ROLES = %i[admin superadmin author banned]
end
