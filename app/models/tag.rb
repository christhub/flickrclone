class Tag < ActiveRecord::Base
  has_and_belongs_to_many :posts
  belongs_to :user
  has_and_belongs_to_many :pictures

  validates_presence_of :name


end
