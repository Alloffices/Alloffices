class Post < ActiveRecord::Base
	has_many :comments
	
	validates :title, presence: true, length: { minimum: 5 }
	validates :location, presence: true
	validates :body, presence: true
	#relation with comments which says it will have many comments
end
