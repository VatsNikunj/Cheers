class AddAttachmentBeerImgToBeers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :beers do |t|
      t.attachment :beer_img
    end
  end

  def self.down
    remove_attachment :beers, :beer_img
  end
end
