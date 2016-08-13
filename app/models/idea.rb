# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Idea < ApplicationRecord
	validates :title, presence: true,length: { minimum: 10}   
	validates :description, presence: true
	validate  :check_planned_to 
	
	def check_planned_to
		if planned_to.present?  && planned_to < Date.today
			errors.add(:planned_to,"Kafanmı Güzel.")
		end
	end

    belongs_to :category 
=begin
	 def category     # identical with belongs_to :category 
		Category.find(category_id)
		# Category tablosuna erişiyorz..istedigim tabloyo bu seklide erişvbişrzz
	 end
=end
end
