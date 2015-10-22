class User < ActiveRecord::Base
  has_many :pictures
  has_many :posts
  has_many :tags

  validates_presence_of :name


end
