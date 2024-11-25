# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
product = Product.update!(
  name: "Women Who Code Sweatshirt",
  description: "Premium quality sweatshirt, perfect for any occasion.",
  base_price: 49.99
)

# Add variants
sizes = ["S", "M", "L", "XL"]
colors = ["Black", "White", "Navy"]

colors.each do |color|
  sizes.each do |size|
    Variant.create!(
      product: product,
      size: size,
      color: color,
      price: 49.99,
      sku: "SW-#{color[0]}#{size}",
      stock: 10
    )
  end
end
