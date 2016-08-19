class Book < ApplicationRecord
	belongs_to :publisher
	has_many :book_authors
	has_many :authors, through: :book_authors
	validates_presence_of :title
	validates_numericality_of :year_published
	scope :alphabetical, -> { order('title') }
	scope :last_decade, -> { where('year_published > ?', 2003) }
end
