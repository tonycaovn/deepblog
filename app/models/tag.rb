class Tag < ActiveRecord::Base
    validates_presence_of :name
    has_many :tagPosts
    has_many :posts, through: :tagPosts
end
