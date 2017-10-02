class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	def new 
		@article = Article.new
	end 

	def edit 
		# Finding the article:
		@article = Article.find(params[:id])
	end


	def create 
		# Going to display the information 
		
		@article = Article.new(article_params)
		#Saving the article:		
		if @article.save
			# Going to display the information 
			flash[:notice] = "Article was successfully created!"
			redirect_to article_path(@article)
		else 
			render 'new'
		end 
	end 

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params) 
			flash[:notice] = "Article was successfully udpated!"
			redirect_to article_path(@article)
		else
			render 'edit'
		end 
	end

	def show 
		@article = Article.find(params[:id])
	end 

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash[:notice] = "Article was successfully deleted"
		redirect_to articles_path
	end 

	private 
		def article_params
			params.require(:article).permit(:title, :description)
		end 
end 