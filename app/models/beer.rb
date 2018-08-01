class Beer < ApplicationRecord
  searchkick
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :beer_img, :styles => { :beer_index => "250x350>", :beer_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :beer_img, :content_type => /\Aimage\/.*\z/

  def self.search(search)
     where("lower(beers.name) LIKE :search OR lower(beers.company) LIKE :search", search: "%#{search.downcase}%").uniq
  end
end
