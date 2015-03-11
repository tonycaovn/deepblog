class Tag < ActiveRecord::Base
    has_many :tagPosts
    has_many :posts, through: :tagPosts
end
