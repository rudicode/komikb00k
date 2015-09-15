class Page < ActiveRecord::Base
  belongs_to :book

  mount_uploader :image, ComicUploader
  validates :title, presence: true
end
