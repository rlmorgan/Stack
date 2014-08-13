class Story < ActiveRecord::Base

	validates :url, presence: true
	validates_format_of :url, with: URI.regexp
	validates :title, presence: true

	has_many :comments
	has_many :votes
	
end
