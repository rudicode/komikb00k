class Book < ActiveRecord::Base
  belongs_to :user
  has_many :pages
  # scope :ordered, :order => "name DESC"
end
