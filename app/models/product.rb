class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true
  validates :description, presence: true
  

  has_attached_file :photo, :styles => { :small => "50x50>", :large => "980x480>"}
  validates_attachment_presence :photo
end
