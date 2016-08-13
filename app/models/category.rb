class Category < ApplicationRecord

	 validates :color, inclusion: {in: %w(red blue green),message: "renk sadece kırmızı mavi veya yeşil olabilir"}
	  validates :title, uniqueness: true

    has_many :ideas 

	# def ideas    #ideantical with has_many 
	#	Idea.where(category_id: id )		
	# end
end
