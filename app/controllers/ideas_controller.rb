class IdeasController < ApplicationController
	def new
		@name ="Saygın"
	end
	def index
		@ideas = Idea.all
	end
end
