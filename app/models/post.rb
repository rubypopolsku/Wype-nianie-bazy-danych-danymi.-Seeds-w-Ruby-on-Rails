class Post < ApplicationRecord
    has_many :comments
    belongs_to :category, optional: true
    belongs_to :user
end
