class IdeasController < ApplicationController
	before_action :set_idea, only: [:show,:update,:edit,:destroy]

	def new
		@idea = Idea.new
		@categories= Category.all.collect{|c| [c.title , c.id]}
	end
	def index
		@ideas = Idea.all.order(id: :desc)
	end

	def  show
	 	
	end
	
	def create
		@idea = Idea.new(idea_params)
		if @idea.save
			#flash[:succes] = "Idea was succesfully created.."
			redirect_to @idea , notice: "Idea was succesfully created.."
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		
		if @idea.update(idea_params)
			redirect_to @idea
		else
			render :edit
		end

	end
	def destroy
		
		@idea.destroy
		redirect_to ideas_path , notice: "Idea was succesfully deleted.."
	end

	private
	def set_idea
		@idea = Idea.find(params[:id])
	end

	def idea_params
		params.require(:idea).permit(:title, :description,:planned_to,:category_id)
	end
end
