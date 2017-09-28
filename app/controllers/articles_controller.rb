class ArticlesController < ApplicationController
	def new 
		@article = Article.new
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

	def show 
		@article = Article.find(params[:id])
	end 

	private 
		def article_params
			params.require(:article).permit(:title, :description)
		end 
end 