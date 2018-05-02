class Article < ApplicationRecord
    belongs_to :category

	scope :active, 	     -> { where('active = ?', true) }
    scope :alphabetical, -> { order('title') }
    
    validate_presence_of :title, :content
end
