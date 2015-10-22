class Picture < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_and_belongs_to_many :tags

  # validates_presence_of :image
  validates_presence_of :caption

end
