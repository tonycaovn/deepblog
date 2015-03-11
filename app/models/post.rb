class Post < ActiveRecord::Base
    has_many :tagPosts
    has_many :tags, through: :tagPosts
end
