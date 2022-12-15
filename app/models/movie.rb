class Movie < ApplicationRecord
    CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Horror', 'Fantasy', 'Action', 'Documentary', 'Science Fiction']

    validates_presence_of :title, :poster_url
    validates :year, numericality: {
        greater_than_or_equal_to: 1888,
        less_than_or_equal_to: Date.today.year
    }
    validates :category, inclusion: {
        in: CATEGORIES, 
        message: "must be one of: #{CATEGORIES.join(', ')}"
    }
end
