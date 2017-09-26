#Ruby class that interacts with the article table 
class Article < ActiveRecord::Base
# Validates that data being saved to the database is valid and it doesn't just contain "nil"
	# validates that the data has a title and that it meets the length constraints: 
	validates :title, presence: true, length: {minimum: 3, maximum: 50}
	#validates that it has a description and that the length meets the certain constraints: 
	validates :description, presence:true, length: {minimum: 10, maximum: 300}

end 