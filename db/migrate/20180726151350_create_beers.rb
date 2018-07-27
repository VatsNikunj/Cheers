class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.string :kind
      t.string :style
      t.decimal :ABV
      t.string :company

      t.timestamps
    end
  end
end
