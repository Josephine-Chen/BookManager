class Author < ApplicationRecord
	has_many :book_authors
	has_many :books, through: :book_authors
	validates_presence_of :first_name, :last_name
	scope :alphabetical, -> { order('last_name, first_name') }

	def name
		"#{last_name}, #{first_name}"
	end
end
