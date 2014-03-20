json.products @products do |json, product|
  
  json.name product.name
  json.description product.description
  json.category product.category_id
  json.photo product.photo.url(:large)

end