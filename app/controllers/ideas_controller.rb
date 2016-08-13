class IdeasController < ApplicationController
	before_action :set_idea, only: [:show,:update,:edit,:destroy]

	def new
		@idea = Idea.new
		set_categories	
	end
	def index
		@ideas = Idea.all.order(id: :desc)
	end

	def  show
	 	#@category =  Category.find(@idea.category_id)
	end
	
	def create
		@idea = Idea.new(idea_params)
		if @idea.save
			#flash[:succes] = "Idea was succesfully created.."
			redirect_to @idea , notice: "Idea was succesfully created.."
		else
			set_categories
			render :new
		end
	end

	def edit
		set_categories
	end

	def update
		
		if @idea.update(idea_params)
			redirect_to @idea
		else
			set_categories
			render :edit
		end

	end
	def destroy
		
		@idea.destroy
		redirect_to ideas_path , notice: "Idea was succesfully deleted.."
	end

	private
	def set_categories
		@categories= Category.all.collect{|c| [c.title , c.id]}
		# tüm kategorileri @categories içine atıyoruz ve formdaki dropdown da cekiyoruzz
	end

	def set_idea
		@idea = Idea.find(params[:id])
	end

	def idea_params
		params.require(:idea).permit(:title, :description,:planned_to,:category_id)
	end
end
