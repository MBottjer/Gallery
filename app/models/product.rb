class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true

  has_attached_file :photo

end
