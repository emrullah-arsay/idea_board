class Category < ApplicationRecord

	 validates :color, inclusion: {in: %w(red blue green),message: "renk sadece kırmızı mavi veya yeşil olabilir"}
	  validates :title, uniqueness: true
end
