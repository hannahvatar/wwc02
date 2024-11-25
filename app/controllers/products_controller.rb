class ProductsController < ApplicationController
  def show
    @product = Product.first  # Since we only have one product
    @variants = {
      "red" => { "small" => { stock: 5 }, "medium" => { stock: 3 } },
      "blue" => { "small" => { stock: 0 }, "medium" => { stock: 2 } }
    }
    @sizes = @product.variants.pluck(:size).uniq  # Get unique sizes
    @colors = @product.variants.pluck(:color).uniq  # Get unique colors
  end
end
