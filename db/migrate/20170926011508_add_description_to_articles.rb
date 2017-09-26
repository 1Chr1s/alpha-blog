class AddDescriptionToArticles < ActiveRecord::Migration[5.1]
  def change
  		#Adding columns to the article table 
  		add_column :articles, :description, :text
  		# Adding the time stamp to the table updates must use "created_at" and "updated_at" or else it won't track the time:
  		add_column :articles, :created_at, :datetime
  		add_column :articles, :updated_at, :datetime
  end
end
