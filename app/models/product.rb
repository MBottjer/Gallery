class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true
  validates :description, presence: true
  


  has_attached_file :photo, 
                    :styles => { :small => "50x50>", :large => "980x620>"},
                    :storage => :s3,
                    :server => 'countryrosefurniture.amazonaws.com',
                    :bucket => 'countryrosefurniture',
                    :s3_credentials => {:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                                        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
  validates_attachment_presence :photo
end
