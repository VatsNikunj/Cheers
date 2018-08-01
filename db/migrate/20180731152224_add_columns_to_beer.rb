class AddColumnsToBeer < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :lat, :float
    add_column :beers, :long, :float
  end
end
