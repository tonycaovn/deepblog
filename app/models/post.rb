class Post < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :content
    has_many :tagPosts
    has_many :tags, through: :tagPosts
end
