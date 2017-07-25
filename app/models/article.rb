class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minmium: 3, maximum: 50}
    validates :description, presence: true, length: {minmium: 10, maximum: 300}  
end