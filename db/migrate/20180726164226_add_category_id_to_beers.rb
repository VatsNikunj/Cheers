class AddCategoryIdToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :category_id, :integer
  end
end
